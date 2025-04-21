let votes: [String: Int] = [
    "Alice": 120,
    "Bob": 45,
    "Charlie": 0,
    "Diana": 78,
    "Eve": 12
]

let disqualified: Set<String> = ["Charlie", "Eve"]

for (candidate, voteCount) in votes {
    if disqualified.contains(candidate) {
        print("Candidate \(candidate) is disqualified")
    } else {
        print("Candidate \(candidate): \(voteCount) votes")
        
        switch voteCount {
        case 0:
            print("Support: No support")
        case 1...49:
            print("Support: Weak support")
        case 50...100:
            print("Support: Moderate support")
        default:
            print("Support: Front-runner")
        }
    }
}
