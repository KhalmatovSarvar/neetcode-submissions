class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let length = s.count
        let arr = Array(s)
        var left = 0
        var right = length - 1

        func isPalindrome(left: Int, right: Int) -> Bool {
            var l = left
            var r = right

            while l < r {
                if arr[l] != arr[r] {
                    return false
                }

                l += 1
                r -= 1
            }
            return true
        }

        while left < right {
            if arr[left] != arr[right] {
                return isPalindrome(left: left+1, right: right) ||
                       isPalindrome(left: left, right: right-1)
            }

            left += 1
            right -= 1
        }

        return true
        }
    }
