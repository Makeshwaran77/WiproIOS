import Foundation

struct User: Codable {
    let id: Int
    let name: String
    let email: String
}

let json = """
{
    "id": 101,
    "name": "Arun Kumar",
    "email": "arun@example.com"
}
"""

do {
    let data = Data(json.utf8)
    let user = try JSONDecoder().decode(User.self, from: data)
    print("ID: \\(user.id)")
    print("Name: \\(user.name)")
    print("Email: \\(user.email)")
} catch {
    print("JSON decoding failed: \\(error)")
}

// Decode a JSON array using [User].
let usersJSON = """
[
  { "id": 1, "name": "Asha", "email": "asha@example.com" },
  { "id": 2, "name": "Bala", "email": "bala@example.com" }
]
"""

do {
    let users = try JSONDecoder().decode([User].self, from: Data(usersJSON.utf8))
    users.forEach { print($0.name) }
} catch {
    print("Array decoding failed: \\(error)")
}