class MyQueue {
    private var stack = [Int]()

    // push to top -> append
    // peek -> last
    // pop -> removeLast
    // size -> count
    // isEmpty -> isEmpty

    init() {

    }

    private var tempStack = [Int]()

    func push(_ x: Int) {
        stack.append(x)
    }

    func pop() -> Int {
        for _ in 0..<stack.count-1 {
            let lastElement = stack.removeLast()
            tempStack.append(lastElement)
        }

        let result = stack.removeLast()

        for _ in 0..<tempStack.count {
            let lastElement = tempStack.removeLast()
            stack.append(lastElement)
        }

        return result
    }

    func peek() -> Int {
        for _ in 0..<stack.count-1 {
            let lastElement = stack.removeLast()
            tempStack.append(lastElement)
        }

        let result = stack.last

        for _ in 0..<tempStack.count {
            let lastElement = tempStack.removeLast()
            stack.append(lastElement)
        }

        return result!
    }

    func empty() -> Bool {
        stack.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let param_2 = obj.pop()
 * let param_3 = obj.peek()
 * let param_4 = obj.empty()
 */
