// A protocol defines requirements a conforming type must implement.
protocol Describable {
    var description: String { get }
    func describe()
}

struct TrainingModule: Describable {
    let title: String
    var description: String { "Training module: \(title)" }
    func describe() { print(description) }
}
TrainingModule(title: "Swift Collections").describe()

// Protocol extensions can supply default behavior.
protocol Resettable {
    mutating func reset()
}
extension Resettable {
    mutating func reset() {
        print("Default reset implementation")
    }
}
struct ScoreBoard: Resettable {
    var score = 100
}
var board = ScoreBoard()
board.reset()

// Extensions add computed properties or methods to existing types.
extension String {
    var wordCount: Int {
        split(whereSeparator: \.isWhitespace).count
    }
}
let note = "Learning Swift every day"
print("Word count: \(note.wordCount)")
