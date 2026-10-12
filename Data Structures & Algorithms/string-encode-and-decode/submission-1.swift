class Solution {
    
    private var counts = [Int]()

    // ["Hello","WorldZ","2026"]

    func encode(_ strs: [String]) -> String {
        var output = ""

        for str in strs {
            output += str // "HelloWorldZ2026"
            counts.append(str.count) // [5,6,4]
        }

        return output
    }

    func decode(_ str: String) -> [String] { // "HelloWorldZ2026"
        var output = [String]()
        var s = Array(str) // converted to charArray [Char]

        var startIndex = 0
        var endIndex = 0

        for i in counts { // [5,6,4]
            endIndex += i // 1: 0-4 // 
            var tempStr = ""

            while startIndex < endIndex {
                let currentChar = s[startIndex] // "HelloWorldZ2026" -> H
                tempStr.append(currentChar) // tempStr = "Hello"
                startIndex += 1
            }

            output.append(tempStr) //  ["Hello"]
        }

    return output

    }
}
