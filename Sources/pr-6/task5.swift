import Foundation

var historicalFigures: [String: (lifeSpan: String, occupation: String)] = [
    "Тарас Шевченко": ("1814–1861", "Поет, художник, громадський діяч"),
    "Леся Українка": ("1871–1913", "Поетеса, драматург, громадська діячка"),
    "Богдан Хмельницький": ("1595–1657", "Гетьман, державний діяч")
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

let simulatedMenuInputs = [1, 2, 1, 3, 4]
let simulatedNames = ["Михайло Грушевський", "Тарас Шевченко"]
let simulatedLifespans = ["1866–1934"]
let simulatedOccupations = ["Історик, політик"]

var menuIndex = 0
var figureIndex = 0

while menuIndex < simulatedMenuInputs.count {
    let choice = simulatedMenuInputs[menuIndex]
    
    switch choice {
    case 1:
        for (name, _) in historicalFigures {
            describeFigure(name: name)
        }
    case 2:
        addFigure(name: simulatedNames[figureIndex],
                  lifeSpan: simulatedLifespans[figureIndex],
                  occupation: simulatedOccupations[figureIndex])
        figureIndex += 1
    case 3:
        describeFigure(name: simulatedNames[0])
    case 4:
        print("Вихід з меню.")
        break
    default:
        print("Невідомий вибір.")
    }
    menuIndex += 1
}
