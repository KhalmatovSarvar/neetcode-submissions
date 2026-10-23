class Solution {
    func simplifyPath(_ path: String) -> String {
        var stack = [String]()

        let parts = path.split(separator: "/").map(String.init)
        //  "/.../a/../b/c/../d/./" a -> [ ... , , .. , b , c, .. , d, . ,]
        for part in parts {
            switch part {
                case ".." : if let last = stack.last {
                    stack.removeLast()
                } else {
                    continue
                }
                case "." : continue
                default: stack.append("/" + part)
            }
        }

        var result = stack.reduce("") { sum, current in
             sum + current
        }

        if result.count == 0 { result += "/" }

        return result
    }
}