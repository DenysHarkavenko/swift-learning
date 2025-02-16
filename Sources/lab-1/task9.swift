// 9) Given an array of strings of words and numbers, return 2 values: 
// - the sum of the numbers in the array 
// - return a number that will be the number of words in the array (ignore digits).

// You can use the provided array: ["4", "Ukraine", "15", "23", "four", "Swift", "lesson"]

import Foundation

let array = ["4", "Ukraine", "15", "23", "four", "Swift", "lesson"]

func analyzeArray(_ array: [String]) -> (sumOfNumbers: Int, wordCount: Int) {
    var sumOfNumbers = 0
    var wordCount = 0
    
    for element in array {
        if let number = Int(element) {
            sumOfNumbers += number 
        } else {
            wordCount += 1
        }
    }
    
    return (sumOfNumbers, wordCount)
}

let result = analyzeArray(array)
print("Sum of numbers: \(result.sumOfNumbers)")
print("Number of words: \(result.wordCount)")
