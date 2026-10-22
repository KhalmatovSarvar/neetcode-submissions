class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var tuples = [(Int, Double)]()
        var stack = [Double]()

   
       for i in 0 ..< position.count {
        var time = Double((target - position[i])) / Double(speed[i])
        tuples.append((position[i], time))
       }

       tuples.sort { $0.0 > $1.0 }

       for car in tuples {
        let currentTime = car.1

        if let lastTime = stack.last {
            if currentTime > lastTime {
                stack.append(currentTime)
            }
        } else {
            stack.append(currentTime)
        }
       }

       return stack.count

    }
}