class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var sum = 0
        var records = [Int]()

        for operation in operations {
            switch operation {
                case "+": addTwoPreviousScores()
                case "D": addDoubledPrevoiusScore()
                case "C": removeLastScore()
                default: addScore(operation)
            }
        }

        calculateSum()

        func addTwoPreviousScores() {
            var lastScore = records.popLast()!
            var secondLastScore = records.last!

            var newScore = lastScore + secondLastScore

            records.append(lastScore)
            records.append(newScore)
        }

        func addDoubledPrevoiusScore() {
            var lastScore = records.last!
            var newScore = lastScore * 2

            records.append(newScore)
        }

        func removeLastScore() {
            records.popLast()
        }

        func addScore(_ num: String) {
            var number = Int(num)!
            records.append(number)
        }

        func calculateSum() {
            sum = records.reduce(0, +)
        }

        return sum
    }
}
