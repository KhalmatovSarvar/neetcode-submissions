class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
    
        var result = [[String]]()

        var dict = [String:[String]]()

        for s in strs {
            let sortedKey = String(s.sorted())
           dict[sortedKey, default: []].append(s) 
        }

        for list in dict.values {
            result.append(list)
        }

        return result

    }
}
