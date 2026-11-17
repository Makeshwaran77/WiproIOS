// Tuples group multiple values into one compound value.
let trainee = (name: "Arun", age: 21, score: 88)
print("Name: \(trainee.name)")
print("Age: \(trainee.age)")
print("Score: \(trainee.score)")

let (name, age, _) = trainee
print("\(name) is \(age) years old")

// A function can return multiple related values in a tuple.
func calculateStats(_ values: [Int]) -> (minimum: Int, maximum: Int, total: Int)? {
    guard let minimum = values.min(), let maximum = values.max() else {
        return nil
    }
    return (minimum, maximum, values.reduce(0, +))
}

if let stats = calculateStats([12, 5, 30, 18]) {
    print("Minimum: \(stats.minimum)")
    print("Maximum: \(stats.maximum)")
    print("Total: \(stats.total)")
}

// Type aliases give an existing type a more descriptive name.
typealias Marks = [Int]
let subjectMarks: Marks = [85, 90, 78]
print("Marks: \(subjectMarks)")
