class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var i = 0
        var j: Int   // 2 <= nums.length <= 1000
        var result = [Int]()

        for i in 0..<nums.count - 1 {
            for j in i+1..<nums.count {
                let isValid = nums[i] + nums[j] == target
                if isValid {
                    result.append(i)
                    result.append(j)
                    break
                }
            }
        }
        return result
    }
}
