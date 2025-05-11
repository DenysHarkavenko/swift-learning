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

addFigure(name: "Іван Франко", lifeSpan: "1856–1916", occupation: "Поет, письменник, публіцист")
