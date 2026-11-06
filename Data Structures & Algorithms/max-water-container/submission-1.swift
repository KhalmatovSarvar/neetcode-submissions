class Solution {
    func maxArea(_ heights: [Int]) -> Int {

        var left = 0
        var right = heights.count-1
        var maxArea = 0

        while left < right {
            let distance = right-left
            let leftSide = heights[left]
            let rightSide =  heights[right]
            let minHeight = min(leftSide,rightSide)

            let currentArea = minHeight * distance

            maxArea = max(maxArea, currentArea)

            if leftSide < rightSide {
                left += 1
            } else {
                right -= 1
            }
        }

        return maxArea
    }
}
