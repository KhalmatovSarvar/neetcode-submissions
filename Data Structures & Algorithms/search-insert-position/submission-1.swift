class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {

        var start = 0
        var end = nums.count - 1
       
        while start <= end {// [-1,0,2,4,6,8] = 6
        // 0 + (5-0)/2 = 0 + 2 = 2
            let mid = start + (end - start) / 2
            // 3 + (5 - 3) / 2 = 3+1 = 4
            // 
            if target == nums[mid] {
                return mid
            } else if target > nums[mid] {
                start = mid + 1 // 5 + 1  = 6
            } else {
                end = mid - 1
            }
        }

        return start
    }
}
