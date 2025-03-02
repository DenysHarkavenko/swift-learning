// Write a function that, given an integer n >= 0, returns an array of
// of n subarrays of increasing length.
// Examples:
// 0 => [ ]
// 1 => [ [1] ]
// 2 => [ [1], [1, 1] ]
// 3 => [ [1], [1, 1], [1, 1, 1] ]

import Foundation

func growingArray(_ n: Int) -> [[Int]] {
    return (1...n).map { Array(repeating: 1, count: $0) }
}

print("Enter a non-negative integer:")
if let input = readLine(), let n = Int(input), n >= 0 {
    let result = growingArray(n)
    print("Result: \(result)")
} else {
    print("Invalid input. Please enter a non-negative integer.")
}
