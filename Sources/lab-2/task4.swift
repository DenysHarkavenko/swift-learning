// We need a function that can convert a number (integer) to a string. What are some ways to achieve this? 
// Examples (input -->output): 123 --> “123”; 999 --> “999”; -100 --> “-100”

func numberToString1(_ num: Int) -> String {
    return String(num)
}

func numberToString2(_ num: Int) -> String {
    return "\(num)"
}

func numberToString3(_ num: Int) -> String {
    return num.description
}

print(numberToString1(123)) 
print(numberToString2(999)) 
print(numberToString3(-100)) 