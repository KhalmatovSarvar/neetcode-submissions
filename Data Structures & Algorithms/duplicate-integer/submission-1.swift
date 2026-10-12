class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let numberSet: Set<Int> = Set(nums)
         return numberSet.count != nums.count
    }
}
