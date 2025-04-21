let users: [String: [String]] = [
    "ivan123": ["admin", "editor"],
    "olga88": ["editor"],
    "maria99": [],
    "andriyX": ["moderator"],
    "svitlana07": ["viewer", "contributor"]
]

let currentUser: String = "ivan123"

if let roles: [String] = users[currentUser] {
    if roles.contains("admin") || roles.contains("moderator") {
        print("Access granted")
    } else {
        print("Access denied")
    }
    
    switch roles.count {
    case 0:
        print("No role assigned")
    case 1:
        print("One role")
    default:
        print("Multiple roles")
    }
} else {
    print("User not found")
}
