
class TimeMap {
    typealias Element = (value: String, timeStamp: Int)

    private var dict = [String:[Element]]()

    init() {}
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        let currentValue = (value: value, timeStamp: timestamp)
        dict[key, default: []].append(currentValue)
    }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        guard let elements = dict[key] else {return ""}

        var left = 0
        var right = elements.count - 1
        var mid = 0

        while left <= right {
            mid = left + (right - left) / 2

            let current = elements[mid].timeStamp

            if current == timestamp {
                return elements[mid].value
            } 
                // 1,1,3,3,7,12 target = 4
            if current > timestamp {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }

        
         return right >= 0 ? elements[right].value : ""
    }
}

/**
 * Your TimeMap object will be instantiated and called as such:
 * let obj = TimeMap()
 * obj.set(key, value, timestamp)
 * let ret_2: String = obj.get(key, timestamp)
 */