// Your task is to create a function that can
// take any non-negative integer as an argument and return
// it along with the digits in descending order. Essentially, rearrange the
// the digits to get the largest possible number.
// Examples:
// Input: 42145 Output: 54421
// Input: 145263 Output: 654321
// Input: 123456789 Exit: 987654321

import Foundation

func descendingOrder(_ number: Int) -> Int {
    let sortedDigits = String(number)
        .compactMap { $0.wholeNumberValue }
        .sorted(by: >)
    return Int(sortedDigits.map { String($0) }.joined()) ?? 0
}

print("Enter a non-negative integer:")
if let input = readLine(), let number = Int(input), number >= 0 {
    let result = descendingOrder(number)
    print("Result: \(result)")
} else {
    print("Invalid input. Please enter a non-negative integer.")
}
