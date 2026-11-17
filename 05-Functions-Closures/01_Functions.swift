// Functions package reusable behavior.
func greet(name: String) {
    print("Hello, \(name)!")
}
greet(name: "Swift Learner")

// Parameter labels and a return type
func add(_ first: Int, _ second: Int) -> Int {
    first + second
}
print("Sum: \(add(10, 20))")

func calculateAverage(marks: [Double]) -> Double? {
    guard !marks.isEmpty else { return nil }
    return marks.reduce(0, +) / Double(marks.count)
}
if let average = calculateAverage(marks: [80, 90, 75]) {
    print("Average: \(average)")
}

// Default parameter
func sendReminder(to name: String, message: String = "Review today's topic.") {
    print("\(name): \(message)")
}
sendReminder(to: "Arun")
sendReminder(to: "Bala", message: "Complete the exercises.")

// Tuple return
func minAndMax(numbers: [Int]) -> (minimum: Int, maximum: Int)? {
    guard let minimum = numbers.min(), let maximum = numbers.max() else {
        return nil
    }
    return (minimum, maximum)
}
if let result = minAndMax(numbers: [4, 9, 2, 12]) {
    print("Min: \(result.minimum), Max: \(result.maximum)")
}
