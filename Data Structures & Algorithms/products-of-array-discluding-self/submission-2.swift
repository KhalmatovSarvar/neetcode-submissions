class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)

        var prefix = 1

        //[1,2,4,6]
        // result = [1,1,2,8]
        for i in 0 ..< nums.count {
            result[i] = prefix
            prefix *= nums[i] // prefix = >  8*6 = 48
        }

        var suffix = 1

        // result = [48,24,12,8]
        for i in stride(from: nums.count-1, through: 0, by: -1) {
            result[i] *= suffix // result[i] => 1*48 = 48
            suffix *= nums[i] // suffix = >  48 * 1 = 48
        }

        return result
    }
}
