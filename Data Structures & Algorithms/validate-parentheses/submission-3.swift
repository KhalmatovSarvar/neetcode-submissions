class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for c in s {
            switch c {
                case "(", "{", "[" :
                    stack.append(c) // push
                default:
                     switch c {
                        case ")":  
                         if stack.last == "(" { stack.removeLast() } else { return false }
                        case "}": 
                         if stack.last == "{" { stack.removeLast() } else { return false }
                        default : 
                         if stack.last == "[" { stack.removeLast() } else { return false }
                        }
             }
        }

    return stack.isEmpty

    }
}
