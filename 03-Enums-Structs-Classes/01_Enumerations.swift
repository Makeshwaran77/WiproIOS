// Enumerations define a type with a fixed set of related cases.
enum TrainingDay {
    case monday, tuesday, wednesday, thursday, friday
}

let today = TrainingDay.wednesday
switch today {
case .monday: print("Swift basics")
case .tuesday: print("Operators")
case .wednesday: print("Collections")
case .thursday: print("Structures and classes")
case .friday: print("Revision")
}

enum HTTPStatus: Int {
    case success = 200
    case notFound = 404
    case serverError = 500
}
print("Status code: \(HTTPStatus.success.rawValue)")

// Associated values
enum LoginResult {
    case success(user: String)
    case failure(message: String)
}
let login = LoginResult.success(user: "Trainee")
switch login {
case .success(let user): print("Welcome, \(user)")
case .failure(let message): print("Login failed: \(message)")
}
