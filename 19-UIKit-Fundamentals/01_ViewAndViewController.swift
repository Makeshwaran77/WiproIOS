import UIKit

final class ProfileViewController: UIViewController {
    private let cardView = UIView()
    private let nameLabel = UILabel()
    private let actionButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        view.backgroundColor = .systemBackground
        setupViews()
        print("viewDidLoad: view hierarchy is ready")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear: screen is about to appear")
    }

    private func setupViews() {
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.backgroundColor = .secondarySystemBackground
        cardView.layer.cornerRadius = 16

        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "Welcome to UIKit"
        nameLabel.font = .preferredFont(forTextStyle: .title2)
        nameLabel.textAlignment = .center

        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.setTitle("Tap Me", for: .normal)
        actionButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        view.addSubview(cardView)
        cardView.addSubview(nameLabel)
        cardView.addSubview(actionButton)

        NSLayoutConstraint.activate([
            cardView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            cardView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            cardView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nameLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 28),
            nameLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -16),
            actionButton.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            actionButton.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -24),
            actionButton.centerXAnchor.constraint(equalTo: cardView.centerXAnchor)
        ])
    }

    @objc private func buttonTapped() {
        nameLabel.text = "Button tapped successfully"
    }
}