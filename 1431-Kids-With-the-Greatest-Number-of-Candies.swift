class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {

        var largestCandies = 0
        
        for i in candies {
            if i > largestCandies {
                largestCandies = i
            }
        }

        var boolArr: [Bool] = []
        for i in candies {
            if i + extraCandies >= largestCandies {
                boolArr.append(true)
            }else {
                boolArr.append(false)
            }
        }

        print(largestCandies)




        return boolArr
    }
}