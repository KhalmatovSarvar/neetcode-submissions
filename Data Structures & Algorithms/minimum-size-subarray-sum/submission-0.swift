class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var left = 0
        var right = 0

        var sum = 0
        var minLength = Int.max


        while right < nums.count {
            let current = nums[right]
            sum += current

            while sum >= target {
                let currentLength = right - left + 1
                minLength = min(minLength, currentLength)
                
                sum -= nums[left]
                left += 1
            }
            right += 1
        }
        return minLength == Int.max ? 0 : minLength
    }
}