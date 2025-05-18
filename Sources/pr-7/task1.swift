import Foundation

// Task 1
enum CharacterType: String {
    case beaverMafioso
    case shrimpCat
    case cactusElephant
    case stickWithBat
    case woodFactory
    case bananaMonkey
    case spyPigeon
    case helicopterAlligator
}

// Task 2
class Character {
    let name: String
    let type: CharacterType
    var powerLevel: Int

    init(name: String, type: CharacterType, powerLevel: Int) {
        self.name = name
        self.type = type
        self.powerLevel = powerLevel
    }

    func describe() {
        print("Ім’я: \(name)\nТип: \(type.rawValue)\nСила: \(powerLevel)\n")
    }

    func interact(with other: Character, action: (Character, Character) -> String) {
        let result = action(self, other)
        print(result)
    }
}

// Task 3
let bobrito = Character(name: "Бобрито Бандито", type: .beaverMafioso, powerLevel: 85)
let tripi = Character(name: "Тріпі Тропі", type: .shrimpCat, powerLevel: 60)
let lirili = Character(name: "Лірілі Ларіла", type: .cactusElephant, powerLevel: 90)
let tung = Character(name: "Тунг Тунг Тунг Тунг Тунг Сахур", type: .stickWithBat, powerLevel: 70)
let brr = Character(name: "Брр Брр Патапім", type: .woodFactory, powerLevel: 50)
let shimpan = Character(name: "Шимпанзіні Бананіні", type: .bananaMonkey, powerLevel: 65)
let golubio = Character(name: "Шпионіо Голубіо", type: .spyPigeon, powerLevel: 55)
let krokodilo = Character(name: "Крокоділо Бомбардіро", type: .helicopterAlligator, powerLevel: 80)

// Task 4
let spy: (Character, Character) -> String = { spy, target in
    return "\(spy.name) шпигує за \(target.name)! Секрети \(target.name) розкриті."
}

let heal: (Character, Character) -> String = { healer, target in
    target.powerLevel += 15
    return "\(healer.name) лікує \(target.name)! Сила \(target.name) тепер \(target.powerLevel)."
}

let attack: (Character, Character) -> String = { attacker, defender in
    defender.powerLevel -= 10
    return "\(attacker.name) атакує \(defender.name)! У \(defender.name) залишилося \(defender.powerLevel) сили."
}

let motivate: (Character, Character) -> String = { motivator, target in
    target.powerLevel += 5
    return "\(motivator.name) надихає \(target.name)! Сила \(target.name) піднялася до \(target.powerLevel)."
}

// Task 5
golubio.interact(with: bobrito, action: spy)
lirili.interact(with: tripi, action: heal)
tung.interact(with: krokodilo, action: attack)
shimpan.interact(with: brr, action: motivate)
