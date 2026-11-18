class Solution {
    func search(_ nums: [Int], _ target: Int) -> Bool {
        var left = 0
        var right = nums.count - 1

        var mid = 0 
        // [3,4,5,-1,0,1,2]  target = 0
        while left <= right {
            mid = left + (right - left) / 2
            let current = nums[mid]

            if current == target {
                return true
            }

            if nums[left] == current && current == nums[right] {
                left += 1
                right -= 1
                continue
            }
            
            if nums[left] <= current { //left is sorted

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

        return false
    }
}
