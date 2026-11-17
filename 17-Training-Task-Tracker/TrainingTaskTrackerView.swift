import SwiftUI

struct TrainingTaskTrackerView: View {
    @State private var tasks: [TrainingTask] = [
        TrainingTask(title: "Swift fundamentals"),
        TrainingTask(title: "Arrays, Sets, and Dictionaries"),
        TrainingTask(title: "Structures and Classes"),
        TrainingTask(title: "Optionals and ARC"),
        TrainingTask(title: "Functions and Closures")
    ]

    @State private var newTaskTitle = ""

    private var completedCount: Int {
        tasks.filter { $0.isCompleted }.count
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Training Progress")
                        .font(.headline)

                    ProgressView(value: Double(completedCount),
                                 total: Double(max(tasks.count, 1)))

                    Text("\(completedCount) of \(tasks.count) topics completed")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 12))

                HStack {
                    TextField("Enter a training topic", text: $newTaskTitle)
                        .textFieldStyle(.roundedBorder)

                    Button("Add", action: addTask)
                        .buttonStyle(.borderedProminent)
                        .disabled(newTaskTitle.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                }

                List {
                    ForEach($tasks) { $task in
                        Toggle(task.title, isOn: $task.isCompleted)
                    }
                    .onDelete(perform: deleteTasks)
                }
                .listStyle(.plain)
            }
            .padding()
            .navigationTitle("Wipro iOS Tasks")
        }
    }

    private func addTask() {
        let title = newTaskTitle.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !title.isEmpty else { return }

        tasks.append(TrainingTask(title: title))
        newTaskTitle = ""
    }

    private func deleteTasks(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}

#Preview {
    TrainingTaskTrackerView()
}
