class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0

        for i in 0 ..< prices.count-1 { //[7,1,5,3,6,4]
            var profit = prices[i+1] - prices[i] 

            if profit > 0 {
                maxProfit += profit // 5-1 = 4 // 6-3 = 3 ==> 7
            }
        }

        return maxProfit
    }
}
