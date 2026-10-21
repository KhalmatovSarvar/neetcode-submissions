
class StockSpanner {
    private var stack = [Int]() //storing indices
    private var results = [Int]() // []
    var answer = 1

    init() {
        
    }
    
    func next(_ price: Int) -> Int { // [100,35,45,65,50]
        results.append(price) // [100, 35, 45, 65, 50]
         
        while let last = stack.last,
            price >= results[last] {

            stack.removeLast()
            }

            if let last = stack.last {
                answer = results.count - 1 - last // 5-1-3 = 1
            } else {
                answer = results.count //1
            }

            stack.append(results.count-1) //[0, 3]

            return answer
        }
    } // [ 1, 1, 2, 3, 1]

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let ret_1: Int = obj.next(price)
 */