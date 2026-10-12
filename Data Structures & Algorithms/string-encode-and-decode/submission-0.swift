class Solution {
    
    private var counts = [Int]()

    func encode(_ strs: [String]) -> String {
        var output = ""

        for str in strs {
            output += str
            counts.append(str.count)
        }

        return output
    }

    func decode(_ str: String) -> [String] {
        var output = [String]()
        var s = Array(str) // converted to charArray

        var startIndex = 0
        var endIndex = 0

        for i in counts {
            endIndex += i
            var tempStr = ""

            while startIndex < endIndex {
                let currentChar = s[startIndex]
                tempStr.append(currentChar)
                startIndex += 1
            }

            output.append(tempStr)
            startIndex = endIndex
        }

    return output
  

    }
}
