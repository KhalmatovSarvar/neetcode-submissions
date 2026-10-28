class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let filteredString = s.filter { $0.isNumber || $0.isLetter }.lowercased()

        let arr = Array(filteredString)
        
        for i in 0 ..< arr.count / 2 {
            if arr[i] != arr[arr.count-1-i] {
                return false
            } 
        }

        return true
    }
}
