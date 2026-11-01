class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
     var k = 1 //3

     for i in 1 ..< nums.count { //[2,10,10,30,30,30]
     // i=4 ; k=2
        if nums[i] != nums[k-1] { // 2,10,30,30,30,30
            nums[k] = nums[i]
            k += 1
        }
     }
       return k
    }
}
