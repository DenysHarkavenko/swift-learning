// Write a function to find the average of the three
// scores passed to it and return the letter value associated with that
// score.
// Letter grade:
// 90 <= grade <= 100 "A"
// 80 <= grade <= 90 "B"
// 70 <= grade <= 80 "C"
// 60 <= score <= 70 "D"
// 0 <= score <= 60 "F"
// All tested values are in the range from 0 to 100. There is no
// need to check for negative values or values
// or values greater than 100.

func getLetterGrade(score1: Int, score2: Int, score3: Int) -> String {
    let averageScore = (score1 + score2 + score3) / 3
    
    switch averageScore {
    case 90...100:
        return "A"
    case 80..<90:
        return "B"
    case 70..<80:
        return "C"
    case 60..<70:
        return "D"
    default:
        return "F"
    }
}

func readIntInput(prompt: String) -> Int {
    print(prompt, terminator: " ")
    if let input = readLine(), let number = Int(input) {
        return number
    } else {
        print("Invalid input. Please enter a number between 0 and 100.")
        return readIntInput(prompt: prompt)
    }
}

let score1 = readIntInput(prompt: "Enter the first score:")
let score2 = readIntInput(prompt: "Enter the second score:")
let score3 = readIntInput(prompt: "Enter the third score:")

let grade = getLetterGrade(score1: score1, score2: score2, score3: score3)
print("The final grade is: \(grade)")
