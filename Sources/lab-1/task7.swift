// 7) Your goal is to create a function that removes the first and last characters of a string. You are given one parameter, the input string. You don't need to worry about strings with fewer than two characters.

import Foundation

print("Enter a string:")
guard let someString = readLine(), someString.count > 2 else {
    print("Error: Enter a string with more than 2 characters.")
    exit(1)
}

func removeFirstAndLastCharacter(from string: String) -> String {
    let newString = String(string.dropFirst().dropLast())
    return newString
}

let modifiedString = removeFirstAndLastCharacter(from: someString)
print("Original string: \(someString)")
print("Modified string: \(modifiedString)")
