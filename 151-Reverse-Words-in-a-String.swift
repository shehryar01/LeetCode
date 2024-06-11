class Solution {
    func reverseWords(_ s: String) -> String {
    // Step 1: Trim the input string to remove leading and trailing spaces
    let trimmedString = s.trimmingCharacters(in: .whitespacesAndNewlines)
    
    // Step 2: Split the string into words based on spaces
    // The filter step removes any empty strings resulting from multiple spaces
    let words = trimmedString.split(separator: " ").filter { !$0.isEmpty }
    
    // Step 3: Reverse the array of words
    let reversedWords = words.reversed()
    
    // Step 4: Join the reversed array of words into a single string with a single space separating each word
    let result = reversedWords.joined(separator: " ")
    
    return result
    }
}