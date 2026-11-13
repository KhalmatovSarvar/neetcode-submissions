class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {

        var start = 0
        var end = matrix.count-1
        var mid = 0
        var columnCount = matrix[0].count

        while start <= end {
            mid = start + (end - start) / 2

            let row = matrix[mid]
            let maxCurrent = row[columnCount-1]
            let minCurrent = row[0]

            if target >= minCurrent && target <= maxCurrent {
                var left = 0
                var right = columnCount-1
                var middle = 0

                while left <= right {
                    middle = left + (right - left) / 2
                    let current = row[middle]

                    if current == target {
                        return true
                    } else if current < target {
                        left = middle + 1
                    } else {
                        right = middle - 1
                    }
                }
                return false

            } else if target <= minCurrent {
                end = mid - 1
            } else {
                start = mid + 1
            }

        }
        return false
    }
}
