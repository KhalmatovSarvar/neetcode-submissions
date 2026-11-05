class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard nums.count > 0 else { return }

        let k = k % nums.count

        reverse(from: 0, to: nums.count-1)
        reverse(from: 0, to: k-1)
        reverse(from: k, to: nums.count - 1)

        func reverse( from startIndex: Int, to endIndex: Int) {
            var startIndex = startIndex
            var endIndex = endIndex

            while startIndex < endIndex {
                nums.swapAt(startIndex, endIndex)
                startIndex += 1
                endIndex -= 1
            }
        }
    }

   
}
