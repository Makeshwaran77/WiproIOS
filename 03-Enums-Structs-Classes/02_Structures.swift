// Structures are value types: assigning one creates an independent copy.
struct Trainee {
    var name: String
    var completedTasks: Int

    mutating func completeTask() {
        completedTasks += 1
    }

    func displayDetails() {
        print("\(name) completed \(completedTasks) tasks.")
    }
}

var traineeOne = Trainee(name: "Arun", completedTasks: 2)
traineeOne.completeTask()
traineeOne.displayDetails()

var traineeCopy = traineeOne
traineeCopy.name = "Bala"
traineeCopy.completeTask()

print("Original: \(traineeOne.name), tasks: \(traineeOne.completedTasks)")
print("Copy: \(traineeCopy.name), tasks: \(traineeCopy.completedTasks)")
