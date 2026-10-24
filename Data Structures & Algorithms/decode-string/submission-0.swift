class Solution {
    func decodeString(_ s: String) -> String {
        var stack = [Character]()

        for c in s {
            switch c {
            case "]":
                findTheWord(in: &stack)
            default:
                stack.append(c)
            }
        }

        return String(stack)
    }

    func findTheWord(in stack: inout [Character]) {
        var temp = ""

        while let last = stack.last, last != "[" {
            temp = String(stack.removeLast()) + temp
        }

        stack.removeLast()

        var number = ""

        while let last = stack.last, last.isNumber {
            number = String(stack.removeLast()) + number
        }

        let num = Int(number)!

        for _ in 0..<num {
            stack.append(contentsOf: temp)
        }
    }
}