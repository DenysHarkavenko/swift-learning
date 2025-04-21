let students: String = ["Olya", "Andriy", "Mariya", "Ihor", "Svitlana"]

let passedStudents: Set<String> = ["Andriy", "Mariya", "Svitlana"]

let grades: [String: Int] = [
    "Olya": 55,
    "Andriy": 92,
    "Mariya": 81,
    "Ihor": 47,
    "Svitlana": 76
]

for student: String in students {
    if passedStudents.contains(student) {
        print("Well done, \(student)!")
    } else {
        print("Try again, \(student)!")
    }

    if let grade = grades[student] {
        switch grade {
        case 90...100:
            print("Grade: Excellent")
        case 75...89:
            print("Grade: Good")
        case 60...74:
            print("Grade: Satisfactory")
        default:
            print("Grade: Unsatisfactory")
        }
    } else {
        print("No grade available")
    }
}
