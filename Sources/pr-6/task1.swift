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
