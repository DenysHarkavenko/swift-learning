let books: [String] = ["1984", "The Alchemist", "Dune", "Twilight", "The Hobbit"]

let readBooks: Set<String> = ["1984", "Dune", "The Hobbit"]

let ratings: [String: Int] = [
    "1984": 5,
    "The Alchemist": 3,
    "Dune": 4,
    "Twilight": 2
]

for book: String in books {
    if readBooks.contains(book) {
        print("\(book): Read")
    } else {
        print("\(book): Add to reading list")
    }
    
    if let rating: Int = ratings[book] {
        switch rating {
        case 4...5:
            print("Rating: Recommended")
        case 3:
            print("Rating: Worth one read")
        default:
            print("Rating: Not recommended")
        }
    } else {
        print("Rating: Not recommended")
    }
    
}
