class Solution {
    func sortColors(_ nums: inout [Int]) {

        for i in 0 ..< nums.count - 1 {
            for j in i+1 ..< nums.count { 
                if nums[i] > nums[j] {
                    nums.swapAt(i,j)
                }
            }
        }
    }
}
