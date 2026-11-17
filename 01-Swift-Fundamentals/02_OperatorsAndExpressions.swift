// Swift operators and expressions
let firstNumber = 20
let secondNumber = 6

// Arithmetic
print("Addition: \(firstNumber + secondNumber)")
print("Subtraction: \(firstNumber - secondNumber)")
print("Multiplication: \(firstNumber * secondNumber)")
print("Division: \(firstNumber / secondNumber)")
print("Remainder: \(firstNumber % secondNumber)")

// Comparison
print("Equal: \(firstNumber == secondNumber)")
print("Greater: \(firstNumber > secondNumber)")
print("Not equal: \(firstNumber != secondNumber)")

// Logical
let hasIDCard = true
let attendanceApproved = true
print("Can attend: \(hasIDCard && attendanceApproved)")
print("Needs follow-up: \(!hasIDCard || !attendanceApproved)")

// Assignment and compound assignment
var score = 70
score += 15
score -= 5
print("Final score: \(score)")

// Ternary operator and precedence
let result = score >= 50 ? "Pass" : "Fail"
print("Result: \(result)")
print("2 + 3 * 4 = \(2 + 3 * 4)")
print("(2 + 3) * 4 = \((2 + 3) * 4)")
