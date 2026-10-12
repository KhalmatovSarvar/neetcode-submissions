class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0

        for i in 0 ..< prices.count-1 {
            var profit = prices[i+1] - prices[i]

            if profit > 0 {
                maxProfit += profit
            }
        }

        return maxProfit
    }
}
