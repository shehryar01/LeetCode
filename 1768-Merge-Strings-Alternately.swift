class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let countWord1 = word1.count
        let countWord2 = word2.count

        let max = countWord1 > countWord2 ? word1 : word2
        let countMax = max.count
        var word = ""

        
        for i in 0...countMax {
            let index = max.index(max.startIndex, offsetBy: i)

            if i <= countWord1 - 1 {
                word.append(word1[index])
            }

            if i <= countWord2 - 1 {
                word.append(word2[index])
            }
    
        }
        return word
    }
}