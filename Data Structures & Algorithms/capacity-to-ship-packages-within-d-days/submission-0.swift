class Solution {
    func shipWithinDays(_ weights: [Int], _ days: Int) -> Int {
   
        var left = weights.max()!
        var right = weights.reduce(0, +)    
        var mid = 0

        while left <= right {
            mid = left + (right - left) / 2

            var sum = 0
            var count = 1

            for weight in weights { //mid = 5
              
              if sum + weight > mid {
                 count += 1
                 sum = weight
                 continue
              } else {
                sum += weight
              }

            }

            if count <= days {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return left
    }
}