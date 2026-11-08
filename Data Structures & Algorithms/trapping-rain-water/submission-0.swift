class Solution {
    func trap(_ height: [Int]) -> Int {

        var left = 0
        var right = height.count - 1

        var leftMax = 0
        var rightMax = 0

        var result = 0

        while left < right {

            if height[left] > height[right] {
                rightMax = max(rightMax, height[right])
                result += rightMax - height[right]
                right -= 1
            } else {
                leftMax = max(leftMax, height[left])
                result += leftMax - height[left]
                left += 1
            }
        }

        return result
    }
}
