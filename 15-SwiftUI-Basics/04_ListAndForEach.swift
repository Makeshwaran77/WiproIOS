import SwiftUI

struct ListAndForEachView: View {
    private let topics = [
        "Swift Fundamentals",
        "Collections",
        "Structures and Classes",
        "Optionals",
        "Functions",
        "Closures"
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(topics, id: \.self) { topic in
                    HStack {
                        Image(systemName: "checkmark.circle")
                            .foregroundStyle(.green)
                        Text(topic)
                    }
                }
            }
            .navigationTitle("Training Topics")
        }
    }
}

#Preview {
    ListAndForEachView()
}
