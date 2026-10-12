class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
         var k = 0

        // [0,1,2,2,3,0,4,2], k = 2 ->[0,1,3,0,4,2,4,2]

         for i in 0 ..< nums.count {

            if nums[i] != val {
                nums[k] = nums[i]
                k += 1
            }

         }   

         return k
    }
}
