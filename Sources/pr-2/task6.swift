// The first century covers from 1 year to 100 years inclusive, the second century - from 101 to 200 inclusive, and so on.
// Task: Given a year, return the century it is in.
// Examples: 1705 --> 18; 1900 --> 19; 1601 --> 17; 2000 --> 20; 2742 --> 28

func getCentury(year: Int) -> Int {
    return (year + 99) / 100
}

print(getCentury(year: 1705)) 
print(getCentury(year: 1900))  
print(getCentury(year: 1601)) 
print(getCentury(year: 2000)) 
print(getCentury(year: 2742)) 