
class StockSpanner {
    private var stack = [Int]() // [0, 1]
    private var results = [Int]()  // [100, 50, 60]
    var answer = 1

    init() {
        
    }
    
    func next(_ price: Int) -> Int {
        results.append(price) // [100, 50, 60]
         
        while let last = stack.last,
            price >= results[last] {
                
            stack.removeLast()
            }

            if let last = stack.last {
                answer = results.count - 1 - last
            } else {
                answer = results.count
            }

            stack.append(results.count-1)

            return answer
        }
    }

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let ret_1: Int = obj.next(price)
 */