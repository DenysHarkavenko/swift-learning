// 2) Write a program that asks the user for two numbers and prints their sum, difference, product, and quotient.

import Foundation

print("Enter the first number: ", terminator: "")
guard let input1 = readLine(), let num1 = Double(input1) else {
    print("Error: Invalid number entered")
    exit(1)
}

print("Enter the second number: ", terminator: "")
guard let input2 = readLine(), let num2 = Double(input2) else {
    print("Error: Invalid number entered")
    exit(1)
}

print("\nCalculation results:")
print("Sum: \(num1 + num2)")
print("Difference: \(num1 - num2)")
print("Product: \(num1 * num2)")
if num2 != 0 {
    print("Quotient: \(num1 / num2)")
} else {
    print("Quotient: Division by zero is not allowed")
}
