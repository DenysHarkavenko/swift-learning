// Count the number of duplicates Write a function that
// that returns the number of separate case-insensitive letters and numbers,
// that appear more than once in the input string. You can
// assume that the input string contains only letters (both uppercase and
// lowercase) and numbers.
// Example:
// “abcde” -> 0 ”no characters repeats more than once
// “aabbcde” -> 2 ‘’a‘ and ’b'
// “aabBcde” -> 2 # ‘a’ occurs twice and ‘b’ twice (`b‘ and `B’) ‘aA11’ -> 2
// “ABBACC” -> 3 # ‘A’, ‘B’ and ‘C’ each occur twice

import Foundation

func countDuplicates(_ text: String) -> Int {
    let lowercasedText = text.lowercased()
    var charCounts: [Character: Int] = [:]

    for char in lowercasedText {
        charCounts[char, default: 0] += 1
    }

    return charCounts.values.filter { $0 > 1 }.count
}

print("Enter a string:")
if let input = readLine() {
    let result = countDuplicates(input)
    print("Result: \(result)")
} else {
    print("Invalid input.")
}
