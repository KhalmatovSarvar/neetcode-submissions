class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numSet = Set(nums)
        var result = 0

        for num in nums {
            var startCount = num - 1

            guard !numSet.contains(startCount) else { continue }

            var current = calculateConsecutiveSecuenceCount(num)

            if current >= result {
                result = current
            }
        }

         func calculateConsecutiveSecuenceCount(_ n: Int) -> Int {
            var num = n
            var count = 0

            while true {
                if numSet.contains(num) {
                    count += 1
                    num += 1
                } else {  return count }
            }
            
        }

        return result

    }
}
