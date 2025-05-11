import Foundation

// Part 1
var houseMottos: [String: String] = [
    "Stark": "Winter is Coming",
    "Lannister": "Hear Me Roar",
    "Targaryen": "Fire and Blood",
    "Baratheon": "Ours is the Fury",
    "Greyjoy": "We Do Not Sow"
]

func printHouseMotto(name: String) {
    if let motto = houseMottos[name] {
        print("Девіз дому \(name): \(motto)")
    } else {
        print("Дім \(name) не знайдено.")
    }
}

printHouseMotto(name: "Stark")
printHouseMotto(name: "Martell")

// Part 2
let characters: [(name: String, house: String, isAlive: Bool)] = [
    ("Arya Stark", "Stark", true),
    ("Cersei Lannister", "Lannister", false),
    ("Daenerys Targaryen", "Targaryen", false)
]

for character in characters {
    if character.isAlive {
        print("🟢 \(character.name) з дому \(character.house) живий(а).")
    } else {
        print("🔴 \(character.name) з дому \(character.house) загинув(ла).")
    }
}

// Part 3
func describeHouse(_ name: String) {
    guard houseMottos[name] != nil else {
        print("Невідомий дім.")
        return
    }

    switch name {
    case "Stark":
        print("Холод півночі завжди поруч.")
    case "Lannister":
        print("Золото і змови.")
    case "Targaryen":
        print("Дракони і вогонь.")
    default:
        print("Маловідомий дім.")
    }
}

describeHouse("Stark")
describeHouse("Baratheon")

// Part 4
var aliveCount = 0
var index = 0

while index < characters.count {
    if characters[index].isAlive {
        aliveCount += 1
    }
    index += 1
}

print("Кількість живих персонажів: \(aliveCount)")

index = 0
repeat {
    print("Персонаж: \(characters[index].name)")
    index += 1
} while index < characters.count

// Part 5
func countDead(characters: [(String, String, Bool)]) -> Int {
    var count = 0
    for char in characters {
        if !char.2 {
            count += 1
        }
    }
    return count
}

func listAlive(from characters: [(String, String, Bool)]) -> [String] {
    var aliveList: [String] = []
    for char in characters {
        if char.2 {
            aliveList.append(char.0)
        }
    }
    return aliveList
}

print("Загинули: \(countDead(characters: characters))")
print("Живі: \(listAlive(from: characters))")

// Part 6
func summonCharacter(name: String, title: String? = nil) {
    if let title = title {
        print("Привіт, \(title) \(name)!")
    } else {
        print("Привіт, \(name)! Твій титул невідомий.")
    }
}

summonCharacter(name: "Daenerys", title: "Queen")
summonCharacter(name: "Arya")
summonCharacter(name: "Jon Snow", title: "King in the North")

// Part 7
var armyByHouse: [String: [String]] = [
    "Stark": ["Jon", "Arya", "Sansa"],
    "Lannister": ["Jaime", "Tywin"],
    "Targaryen": ["Daenerys", "Grey Worm"]
]

func addWarrior(to house: String, name: String) {
    if armyByHouse[house] != nil {
        armyByHouse[house]?.append(name)
    } else {
        armyByHouse[house] = [name]
    }
}

addWarrior(to: "Stark", name: "Bran")
addWarrior(to: "Martell", name: "Oberyn")
print("Армії по домах: \(armyByHouse)")

// Part 8
var soldiersStark = 100
var soldiersLannister = 100

while soldiersStark > 0 && soldiersLannister > 0 {
    let lossStark = Int.random(in: 5...15)
    let lossLannister = Int.random(in: 5...15)
    soldiersStark -= lossLannister
    soldiersLannister -= lossStark
    print("Стан армій: Stark - \(max(soldiersStark, 0)), Lannister - \(max(soldiersLannister, 0))")
}

if soldiersStark <= 0 && soldiersLannister <= 0 {
    print("Обидва доми програли.")
} else if soldiersStark <= 0 {
    print("Дім-переможець: Lannister")
} else {
    print("Дім-переможець: Stark")
}
