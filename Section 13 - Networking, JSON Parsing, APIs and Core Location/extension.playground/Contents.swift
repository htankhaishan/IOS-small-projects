import UIKit

//extension Double {
//    func round(to places: Int) -> Double {
//        let precisionNumber = pow(10.0, Double(places)) // 1000
//        var n = self                                    // 3.14159
//        n = n * precisionNumber                         // 3141.59
//        n.round()                                       // 3142
//        n = n / precisionNumber                         // 3.142
//        return n                                        // 3.142
//    }
//}
//
//var myDouble = 3.14159
//
//myDouble.round(to: 3) // 3.142
//
//let a = 234.234234
//a.round(to: 2   )

extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red

button.makeCircular()
