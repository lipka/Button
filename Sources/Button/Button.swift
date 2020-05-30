import UIKit

public class Button: UIButton {
    public var alignmentEgdeInsets = UIEdgeInsets.zero
    private var backgroundColors = [UInt: UIColor]() {
        didSet { apply() }
    }

    public override var isSelected: Bool {
        didSet { apply() }
    }

    public override var isEnabled: Bool {
        didSet { apply() }
    }

    public override var isHighlighted: Bool {
        didSet { apply() }
    }

    public override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + titleEdgeInsets.left + titleEdgeInsets.right, height: size.height + titleEdgeInsets.top + titleEdgeInsets.bottom)
    }

    public override var alignmentRectInsets: UIEdgeInsets {
        return alignmentEgdeInsets
    }

    public func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        backgroundColors[state.rawValue] = color
    }

    private func apply() {
        let stateBackgroundColor = backgroundColors[state.rawValue]
        let normalBackgroundColor = backgroundColors[UIControl.State.normal.rawValue]
        backgroundColor = stateBackgroundColor ?? normalBackgroundColor
    }
}
