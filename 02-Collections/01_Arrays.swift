// Arrays are ordered collections of values of the same type.
var trainees = ["Arun", "Bala", "Charan"]
print("Initial: \(trainees)")
print("First trainee: \(trainees[0])")

// Create, insert, update, and remove
trainees.append("Deepa")
trainees.insert("Ezhil", at: 1)
trainees[0] = "Ajay"
trainees.remove(at: 2)
print("Updated: \(trainees)")
print("Count: \(trainees.count)")
print("Is empty: \(trainees.isEmpty)")

for (index, name) in trainees.enumerated() {
    print("\(index + 1). \(name)")
}

let marks = [78, 92, 65, 88, 92]
print("Sorted marks: \(marks.sorted())")
print("Highest mark: \(marks.max() ?? 0)")
print("Marks above 80: \(marks.filter { $0 > 80 })")

let total = marks.reduce(0, +)
let average = Double(total) / Double(marks.count)
print("Average: \(average)")
