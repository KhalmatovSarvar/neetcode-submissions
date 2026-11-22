/**
 * // This is MountainArray's API interface.
 * // You should not implement it, or speculate about its implementation
 * protocol MountainArray {
 *     func get(_ index: Int) -> Int
 *     func length() -> Int
 * }
 */

class Solution {
    func findInMountainArray(_ target: Int, _ mountainArr: MountainArray) -> Int {
        let count = mountainArr.length()

        let peek = findMaxIndex()

        let leftIndex = findTargetFromLeftSide(at: peek)

        if leftIndex != -1 {
            return leftIndex
        }
        
        return findTargetFromRightSide(at: peek)

    func findMaxIndex() -> Int {
         var left = 0
         var right = count - 1

         while left < right {
            let mid = left + (right - left) / 2

            let midNum = mountainArr.get(mid)
            let nextNum = mountainArr.get(mid + 1)

             if midNum < nextNum {
                left = mid + 1
             } else {
                right = mid
            }
        }
        return left
    }

    func findTargetFromLeftSide(at index: Int) -> Int {
        var left = 0
        var right = index
        var mid = 0

        while left <= right {
            mid = left + (right-left) / 2

            let midNum = mountainArr.get(mid)

            if midNum == target {
                return mid
            }

            if midNum > target {
                right = mid - 1
            } else {
                left = mid + 1
            }

        }
        return -1
    }

    func findTargetFromRightSide(at index: Int) -> Int {
        var left = index + 1
        var right = count - 1
        var mid = 0

        while left <= right {
            mid = left + (right-left) / 2

            let midNum = mountainArr.get(mid)

            if midNum == target {
                return mid
            }

            if midNum > target {
                left = mid + 1
            } else {
                right = mid - 1
            }

        }
        return -1
    }

    }

   
}
