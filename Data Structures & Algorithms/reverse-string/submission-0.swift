class Solution {
    func reverseString(_ s: inout [Character]) {
        let length = s.count

        for i in 0 ..< length/2 {
            s.swapAt(i, length-i-1)
        }
    }
}
