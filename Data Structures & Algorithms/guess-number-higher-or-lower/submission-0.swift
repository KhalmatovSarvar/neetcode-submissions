/**
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return       -1 if num is higher than the picked number
 *                1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var start = 1
        var end = n
        var mid = 0

        while start <= end {

            mid = start + (end - start) / 2
            let target = guess(mid)

            if target == 0 {
                return mid
            } else if target == -1 {
                end = mid - 1
            } else if target == 1 {
                start = mid + 1
            }

        }

        return mid
    }
}
