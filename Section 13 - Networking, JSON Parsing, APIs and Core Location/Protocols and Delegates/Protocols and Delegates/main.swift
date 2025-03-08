protocol AdvacedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvacedLifeSupport?
    
    func assessSituation() {
        print("Con you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvacedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("Chest compression, 30 per second.")
    }
}

class Doctor: AdvacedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor do chest compression, 30 per second.")
    }
    
    func useStethescope() {
        print("Listent Heart.")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sing staying alive by the BeeGees.")
    }
    
    func useElectricDrill() {
        print("Whirr....")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)
let angela = Surgeon(handler: emilio)

emilio.delegate = angela

emilio.assessSituation()
emilio.medicalEmergency()
