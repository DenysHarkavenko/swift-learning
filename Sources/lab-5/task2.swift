import Foundation

enum AttackStyle {
    case batWhack, trample, bananaSlip
}

class Arena {
    func battle(_ c1: Character, _ c2: Character, with strategy: (Character, Character, AttackStyle) -> Void) {
        strategy(c1, c2, .batWhack)
    }
}

let batWhack: (Character, Character, AttackStyle) -> Void = { attacker, defender, _ in
    defender.powerLevel -= 20
    print("\(attacker.name) влупив \(defender.name) битою! Сила: \(defender.powerLevel)")
}

let trample: (Character, Character, AttackStyle) -> Void = { attacker, defender, _ in
    defender.powerLevel -= 15
    attacker.powerLevel -= 5
    print("\(attacker.name) затоптав \(defender.name)! Сила жертви: \(defender.powerLevel), нападника: \(attacker.powerLevel)")
}

let bananaSlip: (Character, Character, AttackStyle) -> Void = { attacker, defender, _ in
    defender.powerLevel -= 5
    print("\(defender.name) послизнувся на банані, кинутому \(attacker.name). Сила: \(defender.powerLevel)")
}

let tung = Character(name: "Тунг Тунг Тунг Тунг Тунг Сахур", type: .stickWithBat, powerLevel: 70)
let lirili = Character(name: "Лірілі Ларіла", type: .cactusElephant, powerLevel: 90)

let arena = Arena()
arena.battle(tung, lirili, with: trample)
arena.battle(lirili, tung, with: batWhack)
arena.battle(tung, lirili, with: bananaSlip)
