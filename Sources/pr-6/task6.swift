import Foundation

var historicalFigures: [String: (lifeSpan: String, occupation: String)] = [
    "Тарас Шевченко": ("1814–1861", "Поет, художник, громадський діяч"),
    "Леся Українка": ("1871–1913", "Поетеса, драматург, громадська діячка"),
    "Богдан Хмельницький": ("1595–1657", "Гетьман, державний діяч"),
    "Іван Франко": ("1856–1916", "Поет, письменник, публіцист"),
    "Михайло Грушевський": ("1866–1934", "Історик, політик")
]

func describeFigure(name: String) {
    guard let figure = historicalFigures[name] else {
        print("Постать з іменем \(name) не знайдена.")
        return
    }
    print("Ім'я: \(name), Роки життя: \(figure.lifeSpan), Діяльність: \(figure.occupation)")
}

func classifyFigure(name: String) {
    guard let figure = historicalFigures[name] else {
        print("Постать з іменем \(name) не знайдена.")
        return
    }
    let occupation = figure.occupation.lowercased()
    switch true {
    case occupation.contains("поет"), occupation.contains("поетеса"):
        print("Це діяч літератури")
    case occupation.contains("гетьман"), occupation.contains("державний діяч"):
        print("Це політична постать")
    default:
        print("Інша діяльність")
    }
}

func addFigure(name: String, lifeSpan: String, occupation: String) {
    historicalFigures[name] = (lifeSpan, occupation)
    print("Додано: \(name)")
}

func searchFigures(containing substring: String) {
    let results = historicalFigures.filter { $0.key.lowercased().contains(substring.lowercased()) }
    if results.isEmpty {
        print("Немає постатей, що містять '\(substring)'.")
    } else {
        for (name, _) in results {
            describeFigure(name: name)
        }
    }
}

func printSortedFigures() {
    let sorted = historicalFigures.sorted { $0.key < $1.key }
    for (name, _) in sorted {
        describeFigure(name: name)
    }
}

let simulatedMenuInputs = [1, 5, 6, 4]
let simulatedSearch = "Шевченко"

var menuIndex = 0

while menuIndex < simulatedMenuInputs.count {
    let choice = simulatedMenuInputs[menuIndex]
    
    switch choice {
    case 1:
        for (name, _) in historicalFigures {
            describeFigure(name: name)
        }
    case 2:
        addFigure(name: "Пилип Орлик", lifeSpan: "1672–1742", occupation: "Гетьман, автор Конституції")
    case 3:
        describeFigure(name: "Леся Українка")
    case 4:
        print("Вихід з меню.")
        break
    case 5:
        print("Пошук за фрагментом імені: '\(simulatedSearch)'")
        searchFigures(containing: simulatedSearch)
    case 6:
        print("Всі постаті за абеткою:")
        printSortedFigures()
    default:
        print("Невідомий вибір.")
    }
    
    menuIndex += 1
}
