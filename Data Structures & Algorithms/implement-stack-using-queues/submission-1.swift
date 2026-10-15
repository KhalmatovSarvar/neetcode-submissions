class MyStack {
    private var arr = [Int]()

    init() {

    }

    func push(_ x: Int) {
        arr.append(x)
    }

    func pop() -> Int {
        return arr.removeLast()
    }

    func top() -> Int {
        return arr.last!
    }

    func empty() -> Bool {
        return arr.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let param_2 = obj.pop()
 * let param_3 = obj.top()
 * let param_4 = obj.empty()
 */
