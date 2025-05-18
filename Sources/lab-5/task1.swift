import Foundation

enum ActionType: String {
    case attack
    case spy
    case heal
}

enum CharacterType: String {
    case beaverMafioso, shrimpCat, cactusElephant, stickWithBat, woodFactory, bananaMonkey, spyPigeon, helicopterAlligator
}

class Character {
    let name: String
    let type: CharacterType
    var powerLevel: Int

    init(name: String, type: CharacterType, powerLevel: Int) {
        self.name = name
        self.type = type
        self.powerLevel = powerLevel
    }

    func perform(action: ActionType, on target: Character, using strategy: (Character, Character) -> String) {
        let result = strategy(self, target)
        print(result)
    }
}

let attackAction: (Character, Character) -> String = { attacker, target in
    target.powerLevel -= 10
    return "\(attacker.name) атакує \(target.name)! Сила \(target.name) зменшена до \(target.powerLevel)."
}

let spyAction: (Character, Character) -> String = { spy, target in
    return "\(spy.name) шпигує за \(target.name). Відомо, що сила: \(target.powerLevel)."
}

let healAction: (Character, Character) -> String = { healer, target in
    target.powerLevel += 15
    return "\(healer.name) лікує \(target.name). Сила тепер: \(target.powerLevel)."
}

let bobrito = Character(name: "Бобрито Бандито", type: .beaverMafioso, powerLevel: 85)
let shimpan = Character(name: "Шимпанзіні Бананіні", type: .bananaMonkey, powerLevel: 65)
let golubio = Character(name: "Шпионіо Голубіо", type: .spyPigeon, powerLevel: 55)
let tripi = Character(name: "Тріпі Тропі", type: .shrimpCat, powerLevel: 60)

bobrito.perform(action: .attack, on: shimpan, using: attackAction)
golubio.perform(action: .spy, on: tripi, using: spyAction)
