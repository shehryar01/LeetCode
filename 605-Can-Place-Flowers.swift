class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var flowerbed = flowerbed
    var count = 0

    for i in 0..<flowerbed.count {
        if flowerbed[i] == 0 {
            let prevEmpty = (i == 0) || (flowerbed[i - 1] == 0)
            let nextEmpty = (i == flowerbed.count - 1) || (flowerbed[i + 1] == 0)

            if prevEmpty && nextEmpty {
                flowerbed[i] = 1
                count += 1

                if count >= n {
                    return true
                }
            }
        }
    }

    return count >= n
    }
}