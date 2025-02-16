// 8) Write a program that analyzes whether a number is even or odd, if it is even it should be multiplied by 8, if it is odd, then by 9 and print the result.

import Foundation

print("Enter a number:")
guard let number = Int(readLine()!) else {
    print("Error: invalid input")
    exit(1)
}

let result = (number % 2 == 0) ? number * 8 : number * 9
print("Result: \(result)")
