class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        /* #1 
        return nums + nums
        */

        var result = Array(repeating: 0, count: 2 * nums.count)
        var midIndex = nums.count

        for i in nums.indices {
            result[i] = nums[i]
            result[midIndex + i] = nums[i]
        }

        return result
    }
}
