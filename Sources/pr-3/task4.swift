// Given a string containing only the characters x and y, find out if the number of
// the number of x and y is the same.
// Example:
// (“xxxyyy”) => true
// (“yyyxxx”) => true
// (“xxxyyyy”) => false
// (“yyxyxxyxxyyyyxxxyxyx”) => true
// (“xyxxxxyyyyxyxxyxxyy”) => false
// (“”) => true
// (“x”) => false

import Foundation

func hasEqualXY(_ str: String) -> Bool {
    let countX = str.filter { $0 == "x" }.count
    let countY = str.filter { $0 == "y" }.count
    return countX == countY
}

print(hasEqualXY("xxxyyy"))        // true
print(hasEqualXY("yyyxxx"))        // true
print(hasEqualXY("xxxyyyy"))       // false
print(hasEqualXY("yyxyxxyxxyyyyxxxyxyx")) // true
print(hasEqualXY("xyxxxxyyyxyxxyxxyy")) // false
print(hasEqualXY(""))             // true
print(hasEqualXY("x"))            // false
