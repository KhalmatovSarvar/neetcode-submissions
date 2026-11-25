class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var arr = Array(s)
        var maxLength = 0

        var left = 0
        var right = 0
        var window = Set<Character>()

        while right < arr.count {

            if window.contains(arr[right]) {
                window.remove(arr[left])
                left += 1
                continue
            } else {
                window.insert(arr[right])
            }

            right += 1
            maxLength = max(maxLength, window.count)
        }

        return maxLength

    }
}
