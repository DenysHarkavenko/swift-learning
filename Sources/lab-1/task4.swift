// 4) Write a program that asks the user for two numbers and checks if both numbers are even. The program should print the corresponding message.

import Foundation

print("Enter the first number:")
guard let firstNumber = Int(readLine()!) else {
    print("Error: Invalid number entered")
    exit(1)
}

print("Enter the second number:")
guard let secondNumber = Int(readLine()!) else {
    print("Error: Invalid number entered")
    exit(1)
}

if firstNumber % 2 == 0 && secondNumber % 2 == 0 {
    print("Both numbers (\(firstNumber) and \(secondNumber)) are even.")
} else {
    print("Not all the entered numbers are even.")
}
