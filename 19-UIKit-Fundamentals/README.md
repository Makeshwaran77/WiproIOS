# UIKit Fundamentals

UIKit is Apple's framework for building iOS interfaces using views, view controllers, and controls.

## UIView
- A `UIView` represents a rectangular area on screen.
- It draws content, handles touch events, and manages subviews.
- Examples include labels, buttons, image views, and custom views.

## UIViewController
- Manages a screen or a portion of an interface.
- Coordinates the view hierarchy and user interactions.
- Common lifecycle methods include `viewDidLoad`, `viewWillAppear`, and `viewDidAppear`.

## View hierarchy
- A parent view contains child views (subviews).
- `addSubview(_:)` adds a child view.
- `removeFromSuperview()` removes a view.
- The view controller's `view` is commonly the root of that screen's hierarchy.

## Example
See `01_ViewAndViewController.swift` for a programmatic example.

## Practice
- [ ] Create a UIViewController subclass.
- [ ] Add a UILabel and UIButton as subviews.
- [ ] Use Auto Layout anchors to position them.
- [ ] Add a button action using `addTarget`.
- [ ] Observe view controller lifecycle methods.