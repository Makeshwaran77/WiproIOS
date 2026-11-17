import SwiftUI

struct HelloSwiftUIView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "swift")
                .font(.system(size: 48))
                .foregroundStyle(.orange)

            Text("Welcome to SwiftUI")
                .font(.title)
                .fontWeight(.bold)

            Text("My first iOS training screen")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    HelloSwiftUIView()
}
