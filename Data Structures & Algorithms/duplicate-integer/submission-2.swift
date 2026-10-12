class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        /*
        let numberSet: Set<Int> = Set(nums)
         return numberSet.count != nums.count
         */

         var set = Set<Int>()
         for num in nums {
            if set.contains(num) {
                return true
            } else {
                set.insert(num)
            }
         }

         return false
    }
}
