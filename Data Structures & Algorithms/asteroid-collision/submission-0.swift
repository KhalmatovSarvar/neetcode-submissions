class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()

        for asteroid in asteroids {
            while true {
                guard let last = stack.last,
                      willCollide(last, asteroid) else {
                    stack.append(asteroid)
                    break
                }

                if last > abs(asteroid) {
                    break
                } else if last == abs(asteroid) {
                    stack.removeLast()
                    break
                } else {
                    stack.removeLast()
                }
            }
        }

        return stack
    }

    private func willCollide(_ last: Int, _ current: Int) -> Bool {
        return last > 0 && current < 0
    }
}