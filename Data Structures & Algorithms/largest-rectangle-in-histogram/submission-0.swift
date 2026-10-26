class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var stack = [Int]()
        var maxArea = 0

        for i in 0...heights.count {
            let currentHeight = i == heights.count ? 0 : heights[i]

            while let lastIndex = stack.last,
                  heights[lastIndex] > currentHeight {

                let poppedIndex = stack.removeLast()
                let height = heights[poppedIndex]

                let width: Int

                if let leftIndex = stack.last {
                    width = i - leftIndex - 1
                } else {
                    width = i
                }

                let area = height * width
                maxArea = max(maxArea, area)
            }

            if i < heights.count {
                stack.append(i)
            }
        }

        return maxArea
    }
}