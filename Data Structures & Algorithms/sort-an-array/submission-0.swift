class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var arr = nums
        for i in 0 ..< arr.count - 1 {
            for j in i+1 ..< arr.count {
                if arr[i] > arr[j] {
                    arr.swapAt(i,j)
                }
            }
        }

        return arr
    }
}
