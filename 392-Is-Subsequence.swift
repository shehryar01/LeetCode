class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
                // If s is empty, it's always a subsequence
        if s.isEmpty {
            return true
        }

        // If t is empty and s is not, s cannot be a subsequence
        if t.isEmpty {
            return false
        }

        var expectedIdx = 0

        // Iterate over each character in `t`
        for char in t {
            // Check if the current character in `t` matches the expected character in `s`
            if char == s[s.index(s.startIndex, offsetBy: expectedIdx)] {
                expectedIdx += 1
                // If all characters in `s` have been matched, return true
                if expectedIdx == s.count {
                    return true
                }
            }
        }

        // Return true if all characters in `s` have been matched
        return expectedIdx == s.count
    }
}