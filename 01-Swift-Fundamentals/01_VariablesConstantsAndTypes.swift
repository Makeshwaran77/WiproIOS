// Swift fundamentals: variables, constants, and data types
var learnerName: String = "Swift Learner"
let trainingTrack = "Wipro iOS Training"
var completedTasks: Int = 3
let isLearningSwift = true
var studyHours: Double = 2.5

print("Name: \(learnerName)")
print("Track: \(trainingTrack)")
print("Completed tasks: \(completedTasks)")
print("Learning Swift: \(isLearningSwift)")
print("Study hours: \(studyHours)")

// Swift can infer a type from the assigned value.
var city = "Coimbatore"
let batchNumber = 1
print("City: \(city), Batch: \(batchNumber)")

// Variables can change; constants cannot.
learnerName = "iOS Trainee"
completedTasks += 1
city = "Chennai"
print("Updated name: \(learnerName)")
print("Updated tasks: \(completedTasks)")
print("Updated city: \(city)")

// Uncommenting the next line produces a compile-time error:
// trainingTrack = "Another track"
