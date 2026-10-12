class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var i = 0
        var j: Int   // 2 <= nums.length <= 1000
        var result = [Int]()
        
        while i < nums.count - 1 {
            j = i + 1

            while j < nums.count {
                let isValid = nums[i] + nums[j] == target
                if isValid {
                    result.append(i)
                    result.append(j)
                    break
                }
                j += 1
            }

            i += 1
        }
        return result
    }
}
