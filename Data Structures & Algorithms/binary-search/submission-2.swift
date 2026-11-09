class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {

        var mid = nums.count / 2
        var start = 0
        var end = nums.count - 1

        while start <= end {
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                end = mid - 1
            } else {
                start = mid + 1
            }
            mid = start + (end - start)/2
        }
        return -1
    }
}
