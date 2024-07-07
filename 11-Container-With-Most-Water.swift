class Solution {
    func maxArea(_ height: [Int]) -> Int {
        
        var left = 0
        var right = height.count - 1

        var area = 0
        
        while left < right {

            let currentL = height[left]
            let currentR = height[right]

            let areaCalc = calcArea(left: currentL,
                                    right: currentR,
                                    positionL: left,
                                    positionR: right)

            if areaCalc > area {
                area = areaCalc
            }

            if currentL < currentR {
                left += 1
            }else {
                right -= 1
            }

        }

        return area

    }


    func calcArea(left: Int, right: Int, positionL: Int, positionR: Int) -> Int {

        let area = min(left, right) * (positionR - positionL)
        return area

    }
}