class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)
 // [1,1,1,1]
        var prefix = 1
 // [1,2,4,6]
        for i in 0 ..< nums.count {
            result[i] = prefix
            prefix *= nums[i]
        }

        var suffix = 1

        for i in stride(from: nums.count-1, through: 0, by: -1) {
            result[i] *= suffix
            suffix *= nums[i]
        }

        return result
    }
}
