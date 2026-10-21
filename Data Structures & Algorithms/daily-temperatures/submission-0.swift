class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [Int]()
        var answer = Array(repeating: 0, count: temperatures.count)
        //[73,74,75,71,69]
        for i in temperatures.indices {
            while let last = stack.last, //3
            temperatures[i] > temperatures[last] {
                var result = i - last // 1-0 // 1
                var previousIndex = stack.removeLast() // []-> 0
                answer[previousIndex] = i - previousIndex //1-0
                //[1,1,0,0,0]
            }
        
            stack.append(i)

        }
        return answer
    }

    //i = 0  // stack [0] -> element = 73
    //[2,3,4]
}