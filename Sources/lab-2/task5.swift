// Write a function that takes a string of one or more words and
// returns the same string, but with all words that have five or
// or more letters inverted. The passed strings will consist of only
// letters and spaces. Spaces will be added only if there is more than
// than one word.
// Example:
// “Hey fellow warriors” --> ”Hey wollef sroirraw”
// “This is a test” --> ”This is a test”
// “This is another test” --> ”This is rehtona test”

import Foundation

func spinWords(_ sentence: String) -> String {
    return sentence
        .split(separator: " ")
        .map { $0.count >= 5 ? String($0.reversed()) : String($0) }
        .joined(separator: " ")
}

print("Enter a sentence:")
if let input = readLine() {
    let result = spinWords(input)
    print("Result: \(result)")
} else {
    print("Invalid input.")
}
