import Cocoa
import Virtualization

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var configuration = VZVirtualMachineConfiguration()
    
    private func createBlockDeviceConfiguaration() -> VZDiskImageStorageDeviceConfiguration {
        let mainDiskAttachment = try! VZDiskImageStorageDeviceAttachment(url: macDiskImageURL, readOnly: false)
        return VZVirtioBlockDeviceConfiguration(attachment: mainDiskAttachment)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert other initialization code here
        // Insert code here to tear down your application
        
        configuration.cpuCount = 4
        configuration.memorySize = 4 * 1024 * 1024 * 1024 // 4GB
        
        // Storage
        configuration.storageDevices = [createBlockDevice()]
        
        // Pointing Device
        configuration.pointingDevices = [createPointingDevice()]
        
        // Running Virtual Machine
        let virtualMachine = VZVirtualMachine(configuration: configuration)
        
        // Showing the virtual machine's display
        let virtualMachineView = VZVirtualMachineView()
        virtualMachineView.virtualMachine = virtualMachine
        
        Task {
            do {
                try await virtualMachine.start()
            } catch {
                print("Failed to start VM: \(error)")
            }
        }
        
        // This is our platform object for virtual Macs.
        let platform = VZMacPlatformConfiguration()
        
        // Hardware model for Mac.
        guard let hardwareModel = VZMacHardwareModel(dataRepresentation: savedHardwareModel) else {
            print("Failed to create hardware model")
            return
        }
        platform.hardwareModel = hardwareModel
        
        let auxiliaryStorage = VZMacAuxiliaryStorage(contentsOf: auxiliaryStorageURL)
        platform.auxiliaryStorage = auxiliaryStorage
        
        guard let machineIdentifier = VZMacMachineIdentifier(dataRepresentation: savedIdentifier) else {
            print("Failed to create machine identifier")
            return
        }
        platform.machineIdentifier = machineIdentifier
        
        configuration.platform = platform
        configuration.bootLoader = VZMacOSBootLoader()
        
        Task {
            do {
                // 1. Getting an image.
                let restoreImage = try await VZMacOSRestoreImage.fetchLatestSupported()
                try await download(restoreImage.url)
                
                // 2. Create a compatible configuration
                guard let requirements = restoreImage.mostFeaturefulSupportedConfiguration else {
                    print("No compatible configuration found")
                    return
                }
                
                platform.hardwareModel = requirements.hardwareModel
                configuration.cpuCount = requirements.minimumSupportedCPUCount
                configuration.memorySize = requirements.minimumSupportedMemorySize
                
                // 3. Install macOS
                let installer = VZMacOSInstaller(virtualMachine: virtualMachine, restoringFromImageAt: imageURL)
                try await installer.install()
            } catch {
                print("Failed to install macOS: \(error)")
            }
        }
    }
    
    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    // Placeholder functions for missing device creation
    func createBlockDevice() -> VZStorageDeviceConfiguration {
        fatalError("Implement block device creation")
    }
    
    func createPointingDevice() -> VZPointingDeviceConfiguration {
        return VZUSBScreenCoordinatePointingDeviceConfiguration()
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
    }
}
