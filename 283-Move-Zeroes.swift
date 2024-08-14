class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        /* with 2nd arr
        var arr:[Int] = []
        var lastNonZero = 0

        for (idx,val) in nums.enumerated() {

            if val != 0 {
                arr.insert(val, at: lastNonZero)
                lastNonZero += 1
            }else {
                arr.append(val)
            }
        }
        nums = arr
        */

        let size = nums.count
        var array = nums
    
        for x in 0..<size {
            for y in 0..<size-x-1 {
                if array[y] == 0 {
                    // swap w/o 3rd variable
                    array[y] = array[y] + array[y + 1]
                    array[y + 1] = array[y] - array[y + 1]
                    array[y] = array[y] - array[y + 1]
                }
            }
        }
        nums = array
    }
}