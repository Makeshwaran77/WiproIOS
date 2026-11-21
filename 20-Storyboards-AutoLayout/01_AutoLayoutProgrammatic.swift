import UIKit

final class AutoLayoutExampleViewController: UIViewController {
    private let headingLabel = UILabel()
    private let continueButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupLayout()
    }

    private func setupLayout() {
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        headingLabel.text = "Auto Layout Example"
        headingLabel.font = .preferredFont(forTextStyle: .title2)
        headingLabel.textAlignment = .center

        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.setTitle("Continue", for: .normal)

        view.addSubview(headingLabel)
        view.addSubview(continueButton)

        NSLayoutConstraint.activate([
            headingLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            headingLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            headingLabel.leadingAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            headingLabel.trailingAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            continueButton.topAnchor.constraint(equalTo: headingLabel.bottomAnchor, constant: 24),
            continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}