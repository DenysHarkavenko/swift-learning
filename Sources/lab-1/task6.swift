// 6) Write a program that asks the user for a number and checks whether it is even or odd using a conditional operator. The program should print the corresponding message.

import Foundation

print("Enter a number:")
guard let number = Int(readLine()!) else {
    print("Error: Invalid number entered")
    exit(1)
}

let result = (number % 2 == 0) ? "The number is even." : "The number is odd."
print(result)
