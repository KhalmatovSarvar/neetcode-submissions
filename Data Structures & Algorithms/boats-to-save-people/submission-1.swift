class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        var people = people.sorted()
        var left = 0
        var right = people.count-1

        var result = 0

        while left <= right { //[1,3,2,3,2] -> [1,2,2,3,3]
            let sum = people[left] + people[right]

            if sum <= limit {
                result += 1
                right -= 1
                left += 1
            } else if sum > limit {
                result += 1
                right -= 1
            }
        }
        return result
    }
}
