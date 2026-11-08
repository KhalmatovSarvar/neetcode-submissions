class Solution {
    func trap(_ height: [Int]) -> Int {

        var left = 0
        var right = height.count - 1

        var leftMax = 0
        var rightMax = 0

        var result = 0

        while left < right { // [3, 0, 2, 0, 4]

            if height[left] > height[right] {
                rightMax = max(rightMax, height[right])
                result += rightMax - height[right]
                right -= 1
            } else {
                leftMax = max(leftMax, height[left])//3
                result += leftMax - height[left] // 3-0 = 3 // 4 +3 = 7
                left += 1
            }
        }

        return result
    }
}
