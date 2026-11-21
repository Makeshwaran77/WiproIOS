# UIKit Controls, UIStackView, and Modal Presentation

## Common UIKit controls
- `UILabel`: displays text.
- `UIButton`: responds to taps.
- `UITextField`: accepts single-line text input.
- `UITextView`: accepts multi-line text.
- `UIImageView`: displays images.
- `UISwitch` and `UISlider`: capture user choices.
- `UITableView`: displays rows of data.

## UIStackView
Arranges views in a horizontal or vertical stack and manages their layout.
Important properties: `axis`, `alignment`, `distribution`, and `spacing`.

## Modal presentation
Use `present(_:animated:completion:)` to display another view controller modally.
Use `dismiss(animated:completion:)` to close the presented screen.

See `01_ControlsAndStackView.swift` and `02_ModalPresentation.swift` for examples.

## Practice checklist
- [ ] Create a form with a label and text field.
- [ ] Add a button and handle its tap event.
- [ ] Arrange controls using a vertical UIStackView.
- [ ] Present a confirmation screen modally.
- [ ] Dismiss the modal screen using a button.