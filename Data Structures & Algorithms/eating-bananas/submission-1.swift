class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var left = 1
        var right = piles.max()!

        while left < right {
            let mid = left + (right - left) / 2

            var hours = 0

            for pile in piles {
                var current = pile / mid

                if pile % mid != 0 {
                    current += 1
                }

                hours += current
            }
            
            if hours <= h {
                right = mid
            } else {
                left = mid + 1
             }
        }

        return left
    }
}
