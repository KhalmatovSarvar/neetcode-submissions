class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let w1 = Array(word1)
        let w2 = Array(word2)

        let minLength = min(w1.count, w2.count)
        let maxLength = max(w1.count, w2.count)
        
        var result = ""

        for i in 0 ..< minLength {
            result += String(w1[i]) + String(w2[i])
        }

        for i in minLength ..< maxLength {
            if w1.count >= w2.count {
                result += String(w1[i])
            } else {
                result += String(w2[i])
            }
        }

        return result
    }
}
