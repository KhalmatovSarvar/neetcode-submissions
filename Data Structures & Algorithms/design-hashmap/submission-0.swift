class MyHashMap {

    private(set) var arr: [(Int,Int)]

    init() {
        arr = []
    }

    func put(_ key: Int, _ value: Int) {
        if let index = contains(key) {
            arr[index].1 = value
        } else {
            arr.append((key, value))
        }
    }

    func get(_ key: Int) -> Int {
        for tuple in arr {
            if tuple.0 == key {
                return tuple.1
            }
        }

        return -1
    }

    func remove(_ key: Int) {
        for i in arr.indices {
            if arr[i].0 == key {
                arr.remove(at: i)
                break
            }
        }
    }

    private func contains(_ key: Int) -> Int? {
        for i in arr.indices {
            if arr[i].0 == key {
                return i
            }
        }
        return nil
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
