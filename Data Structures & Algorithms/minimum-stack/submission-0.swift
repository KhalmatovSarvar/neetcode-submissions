class MinStack {
   private var stack = [Int]()

    private var helperStack = [Int]()

    init() {

    }

    func push(_ val: Int) { // [1,-2,0]
        stack.append(val) // [1,-2,0]

        var currentMin = min(val, helperStack.last ?? val)
        helperStack.append(currentMin) // [1, -2, -2, -3]
       
    }

    func pop() {
        stack.removeLast() // [1,-2,0]
        helperStack.removeLast() // [1,-2,-2]
    }

    func top() -> Int {
        stack.last!
    }

    func getMin() -> Int {
       return helperStack.last!// -3
    }
}
