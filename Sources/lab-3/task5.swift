let products: [String] = ["Laptop", "Smartphone", "Headphones", "Mouse", "Keyboard"]

let stock: [String: Int] = [
    "Laptop": 5,
    "Smartphone": 30,
    "Headphones": 0,
    "Mouse": 75
]

let promoItems: Set<String> = ["Laptop", "Mouse", "Keyboard"]

for item: String in products {
    if let quantity: Int = stock[item] {
        print("\(item): \(quantity) in stock")
        
        switch quantity {
        case 0:
            print("Status: Sold out")
        case 1...10:
            print("Status: Low stock")
        case 11...50:
            print("Status: In stock")
        default:
            print("Status: Plenty in stock")
        }
    } else {
        print("\(item): Not available")
    }
    
    if promoItems.contains(item) {
        print("Discount active!")
    }
}
