// Given an array of integers in the form of strings and numbers, return the sum of of the array values as if they were all numbers. 
// Return your answer as a number.

func sumMix(_ arr: [Any]) -> Int {
    return arr.compactMap { Int("\($0)") }.reduce(0, +)
}

print(sumMix([9, "3", "7", "3"]))
print(sumMix(["5", 2, "8", 4]))  
print(sumMix([10, "20", 30, "40"])) 