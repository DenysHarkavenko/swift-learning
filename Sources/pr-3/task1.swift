// Write a function that converts the input string to uppercase.

import Foundation

func toUpperCase(_ text: String) -> String {
    return text.uppercased()
}

print("Enter a string:")
if let input = readLine() {
    let result = toUpperCase(input)
    print("Result: \(result)")
} else {
    print("Invalid input.")
}