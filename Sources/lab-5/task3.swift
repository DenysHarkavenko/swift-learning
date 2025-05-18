import Foundation

enum FilterType {
    case byPowerLevel(min: Int)
    case byType(CharacterType)
    case strongerThan(Character)
}

class MafiaDatabase {
    var characters: [Character]

    init(characters: [Character]) {
        self.characters = characters
    }

    func filterCharacters(using strategy: (Character) -> Bool) -> [Character] {
        return characters.filter(strategy)
    }

    func sortCharacters(by comparator: (Character, Character) -> Bool) {
        characters.sort(by: comparator)
    }
}

let brr = Character(name: "Брр Брр Патапім", type: .woodFactory, powerLevel: 50)
let krokodilo = Character(name: "Крокоділо Бомбардіро", type: .helicopterAlligator, powerLevel: 80)

let database = MafiaDatabase(characters: [
    bobrito, shimpan, golubio, tripi, tung, lirili, brr, krokodilo
])

print("\nПерсонажі з силою > 60:")
let strongCharacters = database.filterCharacters { $0.powerLevel > 60 }
strongCharacters.forEach { print("- \($0.name) (\($0.powerLevel))") }

print("\nГолуби-шпигуни:")
let pigeons = database.filterCharacters { $0.type == .spyPigeon }
pigeons.forEach { print("- \($0.name)") }

print("\nСортування за спаданням сили:")
database.sortCharacters { $0.powerLevel > $1.powerLevel }
database.characters.forEach { print("- \($0.name): \($0.powerLevel)") }
