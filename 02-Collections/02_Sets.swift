// Sets store unique values and do not guarantee iteration order.
var skillSet: Set<String> = ["Swift", "Xcode", "Git", "Swift"]
print("Skills: \(skillSet)")
print("Unique count: \(skillSet.count)")

skillSet.insert("UIKit")
skillSet.remove("Git")
print("Updated skills: \(skillSet)")
print("Contains Swift: \(skillSet.contains("Swift"))")

let mobileSkills: Set = ["Swift", "UIKit", "Xcode"]
let backendSkills: Set = ["Python", "SQL", "Git"]
print("Union: \(mobileSkills.union(backendSkills))")
print("Intersection: \(mobileSkills.intersection(backendSkills))")
print("Subtraction: \(mobileSkills.subtracting(backendSkills))")
print("Symmetric difference: \(mobileSkills.symmetricDifference(backendSkills))")

let beginnerSkills: Set = ["Swift", "Xcode"]
print("Beginner skills are subset: \(beginnerSkills.isSubset(of: mobileSkills))")
