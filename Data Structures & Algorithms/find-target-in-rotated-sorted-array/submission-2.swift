class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        var mid = 0 
        // [-1,0,1,2,3,4,5]  target = 2
        while left <= right {
            mid = left + (right - left) / 2
            let current = nums[mid]

            if current == target {
                return mid
            } else if nums[left] <= current { //left is sorted
                if nums[left] <= target && target < current  {
                    right = mid - 1
                } else {
                    left = mid + 1
                }      
            } else { // right side is sorted
                if nums[right] >= target && target > current {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }

        return -1
    }
}
