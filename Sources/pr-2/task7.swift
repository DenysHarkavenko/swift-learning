// After a hard day's work at the office, you decide to take a vacation. So you book a flight for you and your girlfriend boyfriend and try to leave all the mess behind. 
// You'll need a rental car to get around during your vacation. The car rental manager makes you a great deal. Each day of car rental costs $40. 
// If you rent a car for 7 days or more, you get a $50 discount. In addition, if you rent a car for 3 or more days, you get $20 off the total amount. 
// Write a code that gives the total amount for different days.


func rentalCarCost(days: Int) -> Int {
    let dailyRate = 40
    var totalCost = days * dailyRate
    
    if days >= 7 {
        totalCost -= 50
    } else if days >= 3 {
        totalCost -= 20
    }
    
    return totalCost
}

print(rentalCarCost(days: 2)) 
print(rentalCarCost(days: 3)) 
print(rentalCarCost(days: 7))  
print(rentalCarCost(days: 10))