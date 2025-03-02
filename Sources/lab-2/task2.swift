// Trolls are attacking your comment section! A common way to
// to deal with this situation is to remove all vowels from the comments of
// trolls' comments, neutralizing the threat. Your task is to write a function,
// that takes a string and returns a new string with all vowels. 

import Foundation

func removeVowels(from text: String) -> String {
    let vowels = "аеєиіїоуюяАЕЄИІЇОУЮЯ"
    return text.filter { !vowels.contains($0) }
}

print("Enter a text:")
if let input = readLine() {
    let result = removeVowels(from: input)
    print("Result: \(result)")
} else {
    print("Invalid input.")
}
