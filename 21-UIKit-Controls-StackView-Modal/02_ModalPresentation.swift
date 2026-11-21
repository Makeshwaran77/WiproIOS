import UIKit

final class ModalHomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Modal Example"
        view.backgroundColor = .systemBackground

        let button = UIButton(type: .system)
        button.setTitle("Show Details", for: .normal)
        button.addTarget(self, action: #selector(showDetails), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc private func showDetails() {
        let details = ModalDetailsViewController()
        details.modalPresentationStyle = .pageSheet
        present(details, animated: true)
    }
}

final class ModalDetailsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        let label = UILabel()
        label.text = "Presented modally"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        let closeButton = UIButton(type: .system)
        closeButton.setTitle("Close", for: .normal)
        closeButton.addTarget(self, action: #selector(closeScreen), for: .touchUpInside)
        closeButton.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(label)
        view.addSubview(closeButton)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            closeButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    @objc private func closeScreen() {
        dismiss(animated: true)
    }
}