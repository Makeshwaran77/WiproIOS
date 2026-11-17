// Generics let one implementation work with multiple types.
func displayItems<T>(_ items: [T]) {
    for item in items {
        print(item)
    }
}
displayItems([1, 2, 3])
displayItems(["Swift", "UIKit", "Xcode"])

struct Stack<Element> {
    private var items: [Element] = []
    mutating func push(_ item: Element) { items.append(item) }
    mutating func pop() -> Element? { items.popLast() }
    var count: Int { items.count }
}
var numberStack = Stack<Int>()
numberStack.push(10)
numberStack.push(20)
print("Removed: \(numberStack.pop() ?? -1)")
print("Stack count: \(numberStack.count)")

// Define and handle custom errors.
enum TrainingError: Error {
    case emptyName
    case invalidScore
}

func validateTrainee(name: String, score: Int) throws -> String {
    guard !name.isEmpty else { throw TrainingError.emptyName }
    guard (0...100).contains(score) else { throw TrainingError.invalidScore }
    return "\(name) scored \(score)"
}

do {
    print(try validateTrainee(name: "Arun", score: 88))
} catch TrainingError.emptyName {
    print("Name cannot be empty.")
} catch TrainingError.invalidScore {
    print("Score must be between 0 and 100.")
} catch {
    print("Unexpected error: \(error)")
}

let optionalReport = try? validateTrainee(name: "Bala", score: 75)
print(optionalReport ?? "Could not create report")
