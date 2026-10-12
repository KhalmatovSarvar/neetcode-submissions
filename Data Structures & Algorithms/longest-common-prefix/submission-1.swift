class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = ""
        var step = 0

        while true {
            var characterSet = Set<Character>() 

            // gets the same index from each string
            for s in strs {
                if s.count > step { //step = 2
                    let stringIndex = s.index(s.startIndex, offsetBy: step) 
                    let charAtIndex = s[stringIndex]
                    characterSet.insert(charAtIndex)
                } else { 
                    return result
                     }
            }
                if characterSet.count == 1 {
                    result.append(characterSet.first!)
                } else {
                    return result
                }
            step += 1
        }
    }
}
