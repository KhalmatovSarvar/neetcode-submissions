class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]() 

        for i in 0 ..< nums.count-1 {
            for j in i+1 ..< nums.count {
                let isValidPairs = nums[i] + nums[j] == target // bool
                if isValidPairs {
                    result.append(i)
                    result.append(j)
                    break
                }
            }
        }

        return result
    }
}
