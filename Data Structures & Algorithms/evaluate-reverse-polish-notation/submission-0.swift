class Solution {
 func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for token in tokens {
            switch token {
                case "+", "-", "*", "/" : makeOperation(operation: token, in: &stack)
                default: stack.append(Int(token)!)
            }
        }

        return stack.first!
    }
 
 // ["2","1","+","3","*"]
 // [2,1] -> [3,3]
 
    func makeOperation(operation: String, in stack: inout [Int]) {
        let lastValue = stack.popLast()! // [3] -> 3
        let lastSecondValue = stack.popLast()! // [] -> 3
        var result: Int

        switch operation {
         case "+": result = lastSecondValue + lastValue // 1+2 = 3
         case "-": result = lastSecondValue - lastValue
         case "/": result = lastSecondValue / lastValue
         default: result = lastSecondValue * lastValue // 3*3 = 9
        }

        stack.append(result) // [] -> [3] -> [9]
    }
}
