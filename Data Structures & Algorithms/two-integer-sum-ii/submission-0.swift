class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var  i = 0
        var j = numbers.count-1

        var result = [Int]()

        while i < j {
            let left = numbers[i]
            let right = numbers[j]
            let sum = left + right

            if  sum == target {
                result.append(i+1)
                result.append(j+1)
                break
            } else if sum < target {
                i += 1
            } else if sum > target {
                j -= 1
            }
        }

        return result
    }
}
