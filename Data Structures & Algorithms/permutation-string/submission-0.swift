class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        var arr1 = Array(s1)
        var arr2 = Array(s2)

        var left = 0
        var right = 0

        let k = arr1.count
        
        var charCount = [Character:Int]()
        var dict = [Character:Int]()

        for char in arr1 {
            dict[char, default: 0] += 1
        }

        while right < arr2.count {
            let current = arr2[right]
            charCount[current, default: 0] += 1

            if right - left + 1 > k {
                let leftChar = arr2[left]
                charCount[leftChar, default: 0] -= 1

                if charCount[leftChar] == 0 {
                    charCount.removeValue(forKey: leftChar)
                }

                left += 1
            }

            if dict == charCount {
                return true
            }

            right += 1
        }

        return false
    }
}