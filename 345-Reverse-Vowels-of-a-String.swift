class Solution {
    func reverseVowels(_ s: String) -> String {

        var idxOfVowels = [Int]()
        var vowels = [Character]()

        var str = s
        
        for (idx, val) in s.enumerated() {
            if isVowel(val) {
                print("k", idx)
                idxOfVowels.append(idx)
                vowels.append(val)
            }
        }

        vowels.reverse()
        var counter = 0
        
        var reversepointer = s.count - 1
        var new = ""

        for (idx, val) in s.enumerated() {
            if isVowel(val) {
                let k = vowels[counter]
                new += String(k)
                counter += 1
            }else {
                new += String(val)
            }
        }


        


        return new
    }

    func isVowel(_ str: Character) -> Bool {
        switch str.lowercased() {
            case "a":
            return true
            case "e":
            return true
            case "i":
            return true
            case "o":
            return true
            case "u":
            return true
            default:
            return false
        }
    }
}