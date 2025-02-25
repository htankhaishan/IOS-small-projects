var studentAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func heightestScore(scores: [String: Int]) {
    if var maxScore = scores.values.max() {
        print(maxScore)
    }
}
