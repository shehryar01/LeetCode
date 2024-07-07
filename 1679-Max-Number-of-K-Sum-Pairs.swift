class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
    var nums = nums.sorted()
    var left = 0
    var right = nums.count - 1
    var operations = 0
    
    while left < right {
        let sum = nums[left] + nums[right]
        if sum == k {
            operations += 1
            left += 1
            right -= 1
        } else if sum < k {
            left += 1
        } else {
            right -= 1
        }
    }
    
    return operations
    }
}