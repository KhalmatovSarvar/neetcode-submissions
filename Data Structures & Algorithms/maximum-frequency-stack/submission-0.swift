
class FreqStack {
    private var stack = [Int]()
    private var dict = [Int:Int]()
    
    init() {
        
    }
    
    func push(_ val: Int) {
        stack.append(val)

        dict[val, default: 0] += 1
    }
    
    func pop() -> Int {
        var nonMostFrequentStoredElements = [Int]()
        var mostFrequentElements = findFrequentElements()

        while let last = stack.last,
        !mostFrequentElements.contains(last) {
            nonMostFrequentStoredElements.append(last)
            stack.removeLast()
        }

        var result = stack.removeLast()
        dict[result, default: 0] -= 1

        for _ in 0 ..< nonMostFrequentStoredElements.count {
            stack.append(nonMostFrequentStoredElements.removeLast())
        }

        return result
    }

    private func findFrequentElements() -> Set<Int> {
        var currentMax = dict.values.max()!
        var maxValues = dict.filter { $0.value == currentMax  }.map { $0.key }

        return Set(maxValues)
    }
 }