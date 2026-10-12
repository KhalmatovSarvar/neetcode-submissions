class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    var result = [[String]]()

    var dict = [String:[String]]()
    // act -> act
    // cat -> act
    for s in strs {
        let sortedKey = String(s.sorted())
        dict[sortedKey, default: []].append(s) // act-> [act, cat]
    }

    for list in dict.values {
        result.append(list)
        //[[act, cat], [hat], [stop,tops, pots]]
    }

    return result
    }
}
