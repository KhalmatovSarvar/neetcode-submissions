class Solution {
    func splitArray(_ nums: [Int], _ k: Int) -> Int {
        
        var left = nums.max()! // 10
        var right = nums.reduce(0, +) // 32
        var mid = 0

        while left <= right { //nums = [7,2,5,10,8], k = 2
            mid = left + (right - left) / 2 // (10+32) / 2 = 21

            var sum = 0
            var count = 1

            for num in nums {
                if sum + num > mid {
                    // 0 + 7 = 7
                    // 7 + 2 = 9
                    // 9 + 5 = 14
                    // 14 + 10 = 24
                    sum = num // sum = 10
                    count += 1
                    continue //[7,9,14] // [10,8]
                } else {
                    sum += num
                }
            }

            if count <= k {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }

        return left
    }
}