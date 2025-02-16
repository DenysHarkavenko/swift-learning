// 3) Write a program that asks the user for two numbers and compares them. The program should print a message saying which number is greater, lesser, or equal.

import Foundation

print("Enter the first number:")
guard let firstNumber = Double(readLine()!) else {
    print("Error: Invalid number entered")
    exit(1)
}

print("Enter the second number:")
guard let secondNumber = Double(readLine()!) else {
    print("Error: Invalid number entered")
    exit(1)
}

if firstNumber > secondNumber {
    print("The first number (\(firstNumber)) is greater than the second number (\(secondNumber))")
} else if firstNumber < secondNumber {
    print("The first number (\(firstNumber)) is lesser than the second number (\(secondNumber))")
} else {
    print("The numbers are equal: \(firstNumber)")
}
