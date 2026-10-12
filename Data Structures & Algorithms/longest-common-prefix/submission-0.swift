class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = ""
        var step = 0
        var counter = 0

        var shouldContinue = true

        while shouldContinue {
            var characterSet = Set<Character>() 

            // gets the same index from each string
            for s in strs {
                if s.count > step {
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
