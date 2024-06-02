class Solution {
    func reverseVowels(_ s: String) -> String {
    var characters = Array(s)
    var left = 0
    var right = characters.count - 1

    while left < right {
        while left < right && !isVowel(characters[left]) {
            left += 1
        }
        while left < right && !isVowel(characters[right]) {
            right -= 1
        }
        if left < right {
            characters.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
    
    return String(characters)
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