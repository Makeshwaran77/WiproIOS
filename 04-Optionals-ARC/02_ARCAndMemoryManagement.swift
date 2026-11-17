// ARC (Automatic Reference Counting) tracks strong references to class instances.
class Course {
    let title: String
    init(title: String) {
        self.title = title
        print("\(title) initialized")
    }
    deinit {
        print("\(title) deinitialized")
    }
}

var courseOne: Course? = Course(title: "Swift Fundamentals")
var courseTwo = courseOne
courseOne = nil
print("courseTwo still retains the instance.")
courseTwo = nil
print("All strong references have now been removed.")

// weak references do not keep the referenced object alive.
protocol CourseDelegate: AnyObject {
    func courseDidFinish()
}

class Learner {
    let name: String
    weak var delegate: CourseDelegate?
    init(name: String) { self.name = name }
}

class Trainer: CourseDelegate {
    func courseDidFinish() {
        print("Trainer received completion notification.")
    }
}

let trainer = Trainer()
let learner = Learner(name: "Trainee")
learner.delegate = trainer
learner.delegate?.courseDidFinish()

// Use unowned only when the referenced object is guaranteed to outlive the reference.
// Avoid strong reference cycles; weak/unowned references can help break them.
