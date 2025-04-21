let storeItems: [[String: Any]] = [
    ["name": "Spider Suit", "price": 299.99, "category": "Suit"],
    ["name": "Mjolnir", "price": 499.99, "category": "Weapon"],
    ["name": "Shield", "price": 199.99, "category": "Weapon"],
    ["name": "Utility Belt", "price": 149.99, "category": "Gadget"],
    ["name": "Ant-Man Suit", "price": 349.99, "category": "Suit"]
]

func generateHeroReport() -> (totalCost: Double, categoryCount: [String: Int]) {
    var totalCost: Double = 0
    var categoryCount: [String: Int] = [:]
    
    for item in storeItems {
        if let price = item["price"] as? Double {
            totalCost += price
        }
        
        if let category = item["category"] as? String {
            categoryCount[category, default: 0] += 1
        }
    }
    
    return (totalCost, categoryCount)
}

let report = generateHeroReport()
print("🧾 Total cost of all items: $\(report.totalCost)")
print("📦 Items per category:")
for (category, count) in report.categoryCount {
    print("- \(category): \(count)")
}
