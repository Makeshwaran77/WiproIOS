import UIKit

final class ControlsStackViewController: UIViewController {
    private let nameField = UITextField()
    private let statusLabel = UILabel()
    private let submitButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "UIKit Controls"
        view.backgroundColor = .systemBackground
        buildInterface()
    }

    private func buildInterface() {
        nameField.placeholder = "Enter your name"
        nameField.borderStyle = .roundedRect
        nameField.autocapitalizationType = .words

        statusLabel.text = "Enter your details"
        statusLabel.textAlignment = .center

        submitButton.setTitle("Submit", for: .normal)
        submitButton.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)

        let stack = UIStackView(arrangedSubviews: [nameField, submitButton, statusLabel])
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nameField.heightAnchor.constraint(equalToConstant: 44)
        ])
    }

    @objc private func submitTapped() {
        let name = nameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        statusLabel.text = name.isEmpty ? "Please enter a name" : "Welcome, \\(name)!"
    }
}