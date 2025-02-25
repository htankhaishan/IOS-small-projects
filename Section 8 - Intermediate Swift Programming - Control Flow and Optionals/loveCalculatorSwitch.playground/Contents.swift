func loveCalculator() {
    var loveScore = Int.random(in: 0...100)
    switch loveScore {
    case 80...100:
        print("Between 80 to 100")
    case 40...79:
        print("more than 40")
    case 0...39:
        print("so low")
    default:
        print("ERor")
    }
}
