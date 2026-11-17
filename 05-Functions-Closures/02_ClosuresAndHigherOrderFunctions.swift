// A closure is a self-contained block of functionality.
let greeting = {
    print("Welcome to Swift closures")
}
greeting()

let multiply: (Int, Int) -> Int = { first, second in
    first * second
}
print("Product: \(multiply(4, 5))")

let numbers = [1, 2, 3, 4, 5]
print("Squares: \(numbers.map { $0 * $0 })")
print("Even numbers: \(numbers.filter { $0 % 2 == 0 })")
print("Total: \(numbers.reduce(0, +))")
print("Descending: \(numbers.sorted { $0 > $1 })")

// A higher-order function accepts a function/closure as an argument or returns one.
func applyOperation(_ value: Int, using operation: (Int) -> Int) -> Int {
    operation(value)
}
let doubled = applyOperation(10) { $0 * 2 }
print("Doubled: \(doubled)")
