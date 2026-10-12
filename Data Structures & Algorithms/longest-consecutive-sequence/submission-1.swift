class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numSet = Set(nums) // [0,3,2,5,4,2,6,1,1] -> [0,3,2,5,4,6,1]
        var result = 0

        for num in numSet {
            var startCount = num - 1 // 2-1 = 1

            guard !numSet.contains(startCount) else { continue }
            //startPoint = -1 ; num = 0
            var currentNumberSecunece = calculateConsecutiveSecuenceCount(num, in: numSet) // 7

            result = max(result,currentNumberSecunece)
        }

        return result

    }

       private func calculateConsecutiveSecuenceCount(_ n: Int, in set: Set<Int>) -> Int {
            var num = n
            var count = 0

            while true {
                if set.contains(num) { // [0,3,2,5,4,6,1] -> 0
                    count += 1 // 1 -> 2 -> 3 .. -> 7
                    num += 1 // 1 -> 2 -> 3  .. -> 7
                } else {  return count }
            }
            
        }
}
