class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        guard k != 0 else { return false }
        var window = Set<Int>()

        for i in 0 ..< nums.count {
           let current = nums[i]

           if window.contains(current) {
                return true
           } else {
            if window.count == k {
                window.remove(nums[i-k])
            }
            window.insert(current)
           }
        }

        return false
    }
}
