class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {

        for i in 0 ..< 9 {
            var numSet = Set<Character>()

            for j in 0 ..< 9 {
                let currentNum = board[i][j]
                guard currentNum != "." else { continue } 
                guard !numSet.contains(currentNum) else { return false }

                numSet.insert(currentNum)
            }

        }

        for i in 0 ..< 9 {
            var numSet = Set<Character>()

            for j in 0 ..< 9 {
                let currentNum = board[j][i]
                guard currentNum != "." else { continue } 
                guard !numSet.contains(currentNum) else { return false }

                numSet.insert(currentNum)
            }

        }

       for rowStart in stride(from: 0, to: 9, by: 3) {
            for colStart in stride(from: 0, to: 9, by: 3) {

            var numSet = Set<Character>()
            for m in rowStart ... rowStart+2 {
                for n in colStart ... colStart+2 {
                    let currentNum = board[m][n]
                    guard currentNum != "." else { continue } 
                    guard !numSet.contains(currentNum) else { return false }

                    numSet.insert(currentNum)
                    }
                }
             }
        }
        return true

    }


}
