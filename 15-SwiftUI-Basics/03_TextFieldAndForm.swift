import SwiftUI

struct TextFieldAndFormView: View {
    @State private var traineeName = ""
    @State private var selectedTrack = "iOS"

    private let tracks = ["iOS", "Cloud", "AI"]

    var body: some View {
        NavigationStack {
            Form {
                Section("Trainee details") {
                    TextField("Enter your name", text: $traineeName)

                    Picker("Training track", selection: $selectedTrack) {
                        ForEach(tracks, id: \.self) { track in
                            Text(track)
                        }
                    }
                }

                Section("Preview") {
                    Text("Name: \(traineeName.isEmpty ? "Not entered" : traineeName)")
                    Text("Track: \(selectedTrack)")
                }
            }
            .navigationTitle("Training Form")
        }
    }
}

#Preview {
    TextFieldAndFormView()
}
