class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int:Int]()
        var majorityNumber = 0
        var maxAppearance = 0

        for num in nums {
          dict[num, default: 0] += 1
        }

        for (key,val) in dict {

            if maxAppearance < val {
                majorityNumber = key
                maxAppearance = val
            }

        }

        return majorityNumber
    }
}
