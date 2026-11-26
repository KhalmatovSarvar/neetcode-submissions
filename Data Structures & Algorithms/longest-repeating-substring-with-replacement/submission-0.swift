class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var arr = Array(s)

        var left = 0
        var right = 0

        var charCount = [Character: Int]()
        var maxCount = 0
        var result = 0

        while right < arr.count {

            let current = arr[right]

            charCount[current, default: 0] += 1

            maxCount = max(maxCount, charCount[current]!)

            if right - left + 1 - maxCount > k {
                charCount[arr[left]]! -= 1
                left += 1
            }

           result = max(result, right - left + 1)

            right += 1
        }
        return result
    }
}