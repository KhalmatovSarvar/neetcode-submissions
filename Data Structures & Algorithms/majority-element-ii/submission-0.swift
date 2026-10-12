class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var majorityPoint = nums.count / 3
        var result = [Int]()

        var dict = [Int:Int]()

        for num in nums {
            dict[num, default: 0] += 1
        }

        for (key,value) in dict {
            if value > majorityPoint {
                result.append(key)
            }
        }

        return result

    }
}
