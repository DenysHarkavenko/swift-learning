// Construct a function that returns an array of integers from n to 1, where n>0. 
// Example: n=5-->[5,4,3,2,1]

func reverseSeq(n: Int) -> [Int] {
    return (1...n).reversed()
}

let result = reverseSeq(n: 5)
print(result) 