// 5) Write a program that asks the user for a number, adds 10 to it, and prints the result.

import Foundation

print("Enter a number:")
guard let number = Double(readLine()!) else {
    print("Error: Invalid number entered")
    exit(1)
}

let result = number + 10
print("Result: \(result)")
