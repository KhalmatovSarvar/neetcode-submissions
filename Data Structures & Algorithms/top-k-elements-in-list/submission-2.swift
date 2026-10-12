class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {

        var dict = [Int:Int]()

        for num in nums {
            dict[num, default: 0] += 1
        }

        var arr = dict
                .sorted { $0.value > $1.value } // [ (3,5),(2,3),(1,1) ]
                .prefix(k) // [(3,5),(2,3)]
                .map { $0.0 } // [3,2]

        return arr
    }
}
