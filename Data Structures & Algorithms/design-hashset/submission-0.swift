class MyHashSet {

    private (set) var arr: [Int]

    init() {
        arr = []
    }

    func add(_ key: Int) {
        guard !contains(key) else { return }

        arr.append(key)
    }

    func remove(_ key: Int) {
        for i in arr.indices {
            if arr[i] == key {
                arr.remove(at: i)
                break
            }
        }
    }

    func contains(_ key: Int) -> Bool {
        for num in arr {
            if num == key {
                return true
            }
        }
        return false
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
