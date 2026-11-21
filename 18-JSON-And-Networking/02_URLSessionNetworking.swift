import Foundation

struct Post: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

enum APIError: Error {
    case invalidURL
    case invalidResponse
    case unsuccessfulStatusCode(Int)
}

func fetchPosts() async throws -> [Post] {
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
        throw APIError.invalidURL
    }

    let (data, response) = try await URLSession.shared.data(from: url)

    guard let httpResponse = response as? HTTPURLResponse else {
        throw APIError.invalidResponse
    }

    guard (200...299).contains(httpResponse.statusCode) else {
        throw APIError.unsuccessfulStatusCode(httpResponse.statusCode)
    }

    return try JSONDecoder().decode([Post].self, from: data)
}

// Example entry point for a command-line Swift run or an async test.
Task {
    do {
        let posts = try await fetchPosts()
        print("Fetched \\(posts.count) posts")
        for post in posts.prefix(5) {
            print("\\(post.id). \\(post.title)")
        }
    } catch {
        print("Request failed: \\(error)")
    }
}
