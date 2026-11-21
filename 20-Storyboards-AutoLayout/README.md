# Storyboards, Auto Layout, and Constraints

## Storyboards
A storyboard visually represents screens and transitions in an iOS app.

### Practice in Xcode
1. Create an iOS App project and select Storyboard if offered by the Xcode project template.
2. Open `Main.storyboard` in Interface Builder.
3. Drag a View Controller onto the canvas.
4. Add a Label, Button, and Image View from the Object Library.
5. Connect controls to an IBOutlet or IBAction in the view controller using the Assistant Editor.
6. Set the initial view controller and run the app.

## Auto Layout
Auto Layout calculates view positions and sizes from constraints.

Important constraint relationships:
- Leading / trailing: horizontal edges.
- Top / bottom: vertical edges.
- Width / height: explicit dimensions.
- Center X / center Y: alignment.
- Safe Area: keeps content clear of system bars and notches.

## Interface Builder exercises
- [ ] Add a label and center it horizontally.
- [ ] Pin a button to the safe area's bottom with spacing.
- [ ] Add equal width constraints to two buttons.
- [ ] Use a vertical stack view with spacing.
- [ ] Test layout on multiple simulator sizes.

See `01_AutoLayoutProgrammatic.swift` for equivalent constraints written in Swift.