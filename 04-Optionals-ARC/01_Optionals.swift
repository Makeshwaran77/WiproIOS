// An optional either contains a value or nil.
var optionalName: String? = "Swift Trainee"
let missingName: String? = nil

// if let safely unwraps an optional.
if let name = optionalName {
    print("Name: \(name)")
} else {
    print("Name unavailable")
}

// guard let unwraps or exits the current scope.
func printUppercasedName(_ name: String?) {
    guard let name = name else {
        print("No name was provided")
        return
    }
    print(name.uppercased())
}
printUppercasedName(optionalName)
printUppercasedName(missingName)

// Nil-coalescing supplies a fallback.
let displayName = missingName ?? "Guest"
print("Display name: \(displayName)")

struct Profile { var city: String }
struct User { var profile: Profile? }
let user = User(profile: Profile(city: "Coimbatore"))
print("City: \(user.profile?.city ?? "Unknown")")

// Avoid force-unwrapping (!) unless a value is guaranteed to exist.
