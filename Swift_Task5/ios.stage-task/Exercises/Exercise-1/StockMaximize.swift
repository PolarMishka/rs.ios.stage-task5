import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {

        var profit: Int = 0
        var wallet: Int = 0
        var count: Int = 0
        var i = 0
        
        func buy(_ b:Int) -> () {
            wallet += b
            count += 1
        }
        func sell(_ s:Int) -> () {
            if count != 0 {
            profit = (s * count) + profit - wallet
            count = 0
            wallet = 0
            }
        }
        while i < prices.count - 1 {

            if prices[i] <= prices[i+1] {
                    buy(prices[i])
            } else {
                    sell(prices[i])
            }
            if prices[i+1] == prices.last {
                    sell(prices[i+1])
            }
            i += 1
        }
    return profit
    }
}

