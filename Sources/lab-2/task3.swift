// The following examples show how to write the accum function:
// Examples:
// accum(“abcd”) -> “A-Bb-Ccc-Dddd”
// accum(“RqaEzty”) -> “R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy”
// accum(“cwAt”) -> “C-Ww-Aaa-Tttt”
// The accum parameter is a string that contains only the letters a..z and A..Z.

import Foundation

func accum(_ text: String) -> String {
    return text.enumerated().map { index, char in
        char.uppercased() + String(repeating: char.lowercased(), count: index)
    }.joined(separator: "-")
}

print("Enter a string:")
if let input = readLine() {
    let result = accum(input)
    print("Result: \(result)")
} else {
    print("Invalid input.")
}
