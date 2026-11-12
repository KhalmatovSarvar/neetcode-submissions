class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x >= 2 else { return x }
        
        var left = 1
        var right = x/2
        var mid = 0

        while left <= right {
            mid =  left + (right - left) / 2

            if mid == x/mid {
                return mid
            } else if mid > x/mid {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }

        return right
    }
}
