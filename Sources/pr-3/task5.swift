// 5 friends (let's call them a, b, c, d, and e) are playing a game and need to keep track of the
// to keep track of the scores. Each time someone scores a point, the letter of their
// of his name is printed in lowercase. If someone loses a point, the letter
// of their name is capitalized. Rank the points you have gained
// from highest to lowest.
// Example of entering the result: EbAAdbBEaBaaBBdAccbeebaec
// Example output: a:1, b:1, c:1, d:1, e:1 b:2, d:2, a:1, c:0, e:-2

import Foundation

func calculateScores(_ result: String) {
    var scores = ["a": 0, "b": 0, "c": 0, "d": 0, "e": 0]

    for char in result {
        if let index = "abcde".firstIndex(of: char.lowercased().first!) {
            let player = String(char.lowercased())
            if char.isLowercase {
                scores[player]! += 1
            } else {
                scores[player]! -= 1
            }
        }
    }

    let sortedScores = scores.sorted { $0.value > $1.value }
    
    let resultString = sortedScores.map { "\($0.key):\($0.value)" }.joined(separator: ", ")
    print(resultString)
}

let input = "EbAAdbBEaBaaBBdAccbeebaec"
calculateScores(input)