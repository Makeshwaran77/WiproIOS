import UIKit

struct PostItem: Decodable {
    let id: Int
    let title: String
    let body: String
}

final class APIListViewController: UITableViewController {
    private var posts: [PostItem] = []
    private let activityIndicator = UIActivityIndicatorView(style: .large)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Latest Posts"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "PostCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 80
        setupLoadingIndicator()
        loadPosts()
    }

    private func setupLoadingIndicator() {
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(activityIndicator)
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    private func loadPosts() {
        activityIndicator.startAnimating()
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            showError("The API URL is invalid.")
            return
        }

        Task {
            do {
                let (data, response) = try await URLSession.shared.data(from: url)
                guard let httpResponse = response as? HTTPURLResponse,
                      (200...299).contains(httpResponse.statusCode) else {
                    throw URLError(.badServerResponse)
                }
                let decodedPosts = try JSONDecoder().decode([PostItem].self, from: data)
                await MainActor.run {
                    self.posts = decodedPosts
                    self.activityIndicator.stopAnimating()
                    self.tableView.reloadData()
                }
            } catch {
                await MainActor.run {
                    self.activityIndicator.stopAnimating()
                    self.showError(error.localizedDescription)
                }
            }
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = posts[indexPath.row].title
        content.secondaryText = posts[indexPath.row].body
        content.textToSecondaryTextVerticalPadding = 6
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        return cell
    }

    private func showError(_ message: String) {
        let alert = UIAlertController(title: "Unable to Load Posts", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

// Set APIListViewController as the app's initial/root view controller to run this screen.