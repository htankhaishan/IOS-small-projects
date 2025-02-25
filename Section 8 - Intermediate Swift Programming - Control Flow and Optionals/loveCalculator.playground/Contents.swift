func loveCalculator() {
    var loveScore = Int.random(in: 0...100)
    print(loveScore)
    if loveScore > 80 {
        print("love")
    } else if loveScore > 40 {
        print("medium")
    } else {
        print("no no")
    }
}

loveCalculator()
