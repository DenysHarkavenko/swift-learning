import Foundation

let heroPowers: [String: String] = [
    "Invisible Coder": "невидимість",
    "Time Debugger": "зупинка часу",
    "Bug Flyer": "політ",
    "Fast Fixer": "мега-швидкість",
    "Captain Refactor": "переписування коду"
]

let leagueMembers: Set<String> = ["Invisible Coder", "Time Debugger", "Bug Flyer", "Fast Fixer"]

let villains: Set<String> = ["Dark Code Master", "Bug Overlord", "Code Destroyer"]

// Step 1
print("Введіть свою суперсилу:")
let superpower = readLine() ?? ""

var heroName = ""
if superpower == "невидимість" {
    heroName = "Invisible Coder"
} else if superpower == "зупинка часу" {
    heroName = "Time Debugger"
} else if superpower == "політ" {
    heroName = "Bug Flyer"
} else if superpower == "мега-швидкість" {
    heroName = "Fast Fixer"
} else {
    heroName = "Unknown Hero"
}

print("🦸‍♂️ Hero identified: \(heroName)")

// Крок 2
let modes = ["бойовий режим", "розробницький режим", "відпочинок", "хаос"]
let randomMode = modes.randomElement()!

switch randomMode {
case "бойовий режим":
    print("💥 \(heroName) fights the bugs!")
case "розробницький режим":
    print("🧠 \(heroName) optimizes the code!")
case "відпочинок":
    print("🎯 \(heroName) plays chess with ChatGPT.")
case "хаос":
    print("😈 \(heroName) writes code with no comments!")
default:
    print("🤖 \(heroName) is doing something mysterious...")
}

// Крок 3
if let foundPower = heroPowers[heroName] {
    print("🧬 Power of \(heroName): \(foundPower)")
} else {
    print("❓ No such hero in the records.")
}

// Крок 4
if leagueMembers.contains(heroName) {
    print("✅ Access granted to the League HQ!")
} else {
    print("⛔ Alert! \(heroName) is a suspicious intruder!")
}


if villains.contains(heroName) {
    print("⚠️ Warning! \(heroName) is a villain!")
} else {
    print("💪 \(heroName) is a true hero!")
}
