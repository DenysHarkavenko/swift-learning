var cart: [String] = []
var deletedItems: Set<String> = []
var editedItems: Set<String> = []
var itemUses: [String: String] = [:]

func addItem(_ name: String, use: String) {
    cart.append(name)
    itemUses[name] = use
}

func editItem(_ oldName: String, newName: String, newUse: String) {
    if let index = cart.firstIndex(of: oldName) {
        cart[index] = newName
        itemUses.removeValue(forKey: oldName)
        itemUses[newName] = newUse
        editedItems.insert(newName)
    }
}

func deleteItem(_ name: String) {
    if let index = cart.firstIndex(of: name) {
        cart.remove(at: index)
        itemUses.removeValue(forKey: name)
        deletedItems.insert(name)
    }
}

func generateReport() {
    print("🧾 Superhero Shop Report")
    print("Items in cart: \(cart.count)")
    print("Items deleted: \(deletedItems.count)")
    print("Items edited: \(editedItems.count)")
    print("Current items:")
    for item in cart {
        if let use = itemUses[item] {
            print("- \(item): \(use)")
        }
    }
}


addItem("Mjolnir", use: "Summon thunder and fly")
addItem("Invisibility Cloak", use: "Hide from enemies")
addItem("Fairy Tooth Wand", use: "Grants dreams through magic")

editItem("Fairy Tooth Wand", newName: "Tooth Fairy Wand", newUse: "Magical dental surprises")

deleteItem("Invisibility Cloak")

generateReport()
