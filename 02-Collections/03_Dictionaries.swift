// Dictionaries store key-value pairs with unique keys.
var traineeMarks: [String: Int] = [
    "Arun": 85,
    "Bala": 92,
    "Charan": 76
]
print("Arun's mark: \(traineeMarks["Arun"] ?? 0)")

// Add or update
traineeMarks["Deepa"] = 90
traineeMarks["Charan"] = 80
traineeMarks.removeValue(forKey: "Bala")

for (name, mark) in traineeMarks {
    print("\(name): \(mark)")
}

print("Trainee count: \(traineeMarks.count)")
print("Sorted report:")
for name in traineeMarks.keys.sorted() {
    print("\(name): \(traineeMarks[name] ?? 0)")
}

// Safe lookup using optional binding
if let mark = traineeMarks["Deepa"] {
    print("Deepa scored \(mark)")
} else {
    print("Trainee not found")
}
