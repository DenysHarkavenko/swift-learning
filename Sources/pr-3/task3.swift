// The following examples show how to write the accum function:
// Examples:
// accum(“abcd”) -> “A-Bb-Ccc-Dddd”
// accum(“RqaEzty”) -> “R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy”
// accum(“cwAt”) -> “C-Ww-Aaa-Tttt”
// The accum parameter is a string that contains only the letters a..z and A..Z.

import Foundation

func accum(_ str: String) -> String {
    return str.enumerated().map { index, char in
        String(repeating: char.uppercased(), count: index + 1) + String(repeating: char.lowercased(), count: index)
    }.joined(separator: "-")
}

print(accum("abcd"))      // "A-Bb-Ccc-Dddd"
print(accum("RqaEzty"))   // "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
print(accum("cwAt"))      // "C-Ww-Aaa-Tttt"
