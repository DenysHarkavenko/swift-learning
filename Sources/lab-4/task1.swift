import Foundation

var historicalFigures: [String: (lifeSpan: String, occupation: String)] = [
    "Тарас Шевченко": ("1814–1861", "Поет, художник, громадський діяч"),
    "Леся Українка": ("1871–1913", "Поетеса, драматург, громадська діячка"),
    "Богдан Хмельницький": ("1595–1657", "Гетьман, державний діяч"),
    "Іван Франко": ("1856–1916", "Поет, письменник, публіцист"),
    "Михайло Грушевський": ("1866–1934", "Історик, політик"),
    "Пилип Орлик": ("1672–1742", "Гетьман, автор Конституції")
]

func printFiguresByOccupation(keyword: String) {
    print("Постаті з діяльністю, що містить '\(keyword)':")
    for (name, figure) in historicalFigures {
        if figure.occupation.lowercased().contains(keyword.lowercased()) {
            print("— \(name): \(figure.occupation)")
        }
    }
}

func countLiteraryFigures() {
    let keywords = ["поет", "поетеса", "письменник", "драматург"]
    var count = 0
    for (_, figure) in historicalFigures {
        let occupation = figure.occupation.lowercased()
        if keywords.contains(where: { occupation.contains($0) }) {
            count += 1
        }
    }
    print("Кількість діячів, пов’язаних з літературою: \(count)")
}

func findOldestFigure() {
    var oldestYear = Int.max
    var oldestName = ""
    for (name, figure) in historicalFigures {
        let components = figure.lifeSpan.components(separatedBy: "–")
        if let birthYearStr = components.first, let birthYear = Int(birthYearStr) {
            if birthYear < oldestYear {
                oldestYear = birthYear
                oldestName = name
            }
        }
    }
    if oldestName != "" {
        print("Найраніше народжена постать: \(oldestName) (\(oldestYear))")
    }
}

func randomFigure() -> (name: String, description: String) {
    let allKeys = Array(historicalFigures.keys)
    if let randomName = allKeys.randomElement(), let figure = historicalFigures[randomName] {
        let description = "Ім'я: \(randomName), Роки життя: \(figure.lifeSpan), Діяльність: \(figure.occupation)"
        return (randomName, description)
    }
    return ("Невідомо", "Немає даних")
}

func quizFigure(guess name: String) -> (isCorrect: Bool, points: Int) {
    let random = randomFigure()
    print("Хто ця постать?\n\(random.description)")
    
    switch name.lowercased() {
    case random.name.lowercased():
        print("✅ Правильно!")
        return (true, 10)
    default:
        print("❌ Неправильно. Це був(ла) \(random.name).")
        return (false, 0)
    }
}


print("🟦 Демонстрація пошуку за діяльністю (ключ: 'поет'):")
printFiguresByOccupation(keyword: "поет")

print("\n🟨 Підрахунок літературних діячів:")
countLiteraryFigures()

print("\n🟧 Найраніше народжена постать:")
findOldestFigure()

print("\n🟩 Випадкова постать:")
let random = randomFigure()
print(random.description)

print("\n🟥 Міні-вікторина (5 запитань):")
let simulatedAnswers = ["Тарас Шевченко", "Леся Українка", "Богдан Хмельницький", "Іван Франко", "Пилип Орлик"]
var totalPoints = 0

for i in 0..<5 {
    print("\nЗапитання \(i + 1):")
    let result = quizFigure(guess: simulatedAnswers[i])
    totalPoints += result.points
}
print("\n🎯 Загальна кількість балів: \(totalPoints) із 50")
