//import Foundation
//
//var now = Date().timeIntervalSince1970
//let oneSecondFromNow = now + 1
//
//while now < oneSecondFromNow {
//    now = Date().timeIntervalSince1970
//    print("waiting...")
//}


class Assignment {
    func fibonacci(n: Int) {
        guard n > 1 else {
            print([0])
            return
        }
        var list = [0,1]
        for _ in 2..<n {
            let nextNum = list[list.count - 1] + list[list.count - 2]
            list.append(nextNum)
        }
        print(list)
    }
}

let assignment = Assignment()
assignment.fibonacci(n: 10)
