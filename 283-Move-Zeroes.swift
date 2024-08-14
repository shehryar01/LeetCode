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

        var i = 0
    
        // Move non-zero elements to the front
        for j in 0..<nums.count {
            if nums[j] != 0 {
                nums[i] = nums[j]
                i += 1
            }
        }
        
        // Fill the remaining positions with zeros
        while i < nums.count {
            nums[i] = 0
            i += 1
        }
    }
}