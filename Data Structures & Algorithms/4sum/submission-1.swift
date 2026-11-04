class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
         guard nums.count >= 4 else { return []}
        let arr = nums.sorted()
        var result = [[Int]]()

       

        // [3,2,3,-3,1,0] -> [-3,0,1,2,3,3]
        for i in 0 ..< arr.count-3 {
            if i > 0 && arr[i] == arr[i - 1] {
                continue
            }

            for j in (i+1) ..< arr.count-2 {
                if j > i+1 && arr[j] == arr[j-1] {
                    continue
                }
                var right = arr.count-1
                var left = j+1

                while left < right {
                    let sum = arr[i] + arr[j] + arr[left] + arr[right]

                    if sum == target {

                        result.append([arr[i], arr[j], arr[left], arr[right]])
                        
                        left += 1
                        right -= 1

                        while left < right && arr[left] == arr[left-1] {
                            left += 1
                        }

                         while left < right && arr[right] == arr[right+1] {
                            right -= 1
                        }

                    } else if sum > target {
                        right -= 1
                    } else { // sum < target
                        left += 1
                    }

                }
            }
        }
        return result
    }
}
