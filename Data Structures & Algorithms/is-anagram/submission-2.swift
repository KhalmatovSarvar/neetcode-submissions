class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var sLetterDict = [Character:Int]()
        var tLetterDict = [Character:Int]()

        for char in s {
            sLetterDict[char, default: 0] += 1
        }

          for char in t {
            tLetterDict[char, default: 0] += 1
        }

        return sLetterDict == tLetterDict

        // for key in sLetterDict.keys {
        //     if (sLetterDict[key] != tLetterDict[key]) {
        //         return false
        //     }
        // }   

        // return true
    }
}
