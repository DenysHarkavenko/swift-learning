// You get an array of numbers, return the sum of all positive ones.
// Example [1, -4, 7, 12]=> 1 + 7 + 12 = 20


func sumPositiveNumbers(_ numbers: [Int]) -> Int {
    return numbers.filter { $0 > 0 }.reduce(0, +)
}

print(sumPositiveNumbers([1, -4, 7, 12])) 
print(sumPositiveNumbers([0, -1, 3, 4]))  
print(sumPositiveNumbers([-1, -2, -3]))   