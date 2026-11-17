import SwiftUI

struct NavigationHomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Wipro iOS Training")
                    .font(.title2)
                    .fontWeight(.semibold)

                NavigationLink("Open Topic Details") {
                    TopicDetailsView()
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

struct TopicDetailsView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("SwiftUI Navigation")
                .font(.title)
            Text("This screen was opened using NavigationLink.")
        }
        .padding()
        .navigationTitle("Topic Details")
    }
}

#Preview {
    NavigationHomeView()
}
