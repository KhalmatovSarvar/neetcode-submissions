class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var result = 0

        for i in 0 ..< nums.count {
            var sum = 0

            for j in i ..< nums.count {
                sum += nums[j]

                if sum == k {
                    result += 1
                }
            }


        }
        return result
    }
}
