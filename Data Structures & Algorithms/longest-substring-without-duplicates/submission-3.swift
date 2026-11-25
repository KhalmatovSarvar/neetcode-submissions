class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let arr = Array(s)
        var maxLength = 0

        var left = 0
        var right = 0

        var window = Set<Character>()

        //s="pwwkew"
        // p
        while right < arr.count {

            if window.contains(arr[right]) {
                window.remove(arr[left])
                left += 1 //3
                continue
            } else {
                window.insert(arr[right]) // window = [k,e,w]
            }

            right += 1
            maxLength = max(maxLength, window.count) // 3
        }

        return maxLength

    }
}
