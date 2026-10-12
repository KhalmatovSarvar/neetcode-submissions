class Solution {
    func firstMissingPositive(_ nums: inout [Int]) -> Int {
   //Cyclic sort method // 1..n
        var nums = nums //O(n)

        let length = nums.count
        var i = 0

        //length = 4
        // [3,4,-1,1]
 
        while i < length { // 0..<4
            guard nums[i] > 0 && nums[i] <= length else { 
                i += 1
                continue 
            }

            var currentIndex = nums[i] - 1 // 0

            if nums[i] != nums[currentIndex] {
                nums.swapAt(i,currentIndex)
                //1: [-1,4,3,1]
                //2: i = 1
                //3: [-1,1,3,4]
                //4: [1,-1,3,4]
            } else {
                i += 1
            }
            
          
        }

            //4: [1,-1,3,4]
        var result = 1
        for i in nums.indices {

            if nums[i] == result {
                result += 1 
            } else {
                return result
            }

        }
        return result
        
    }
}
