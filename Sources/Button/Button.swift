import UIKit

open class Button: UIButton {
    open var alignmentEgdeInsets = UIEdgeInsets.zero

    private var backgroundColors = [UInt: UIColor]() {
        didSet { apply() }
    }

    open override var isSelected: Bool {
        didSet { apply() }
    }

    open override var isEnabled: Bool {
        didSet { apply() }
    }

    open override var isHighlighted: Bool {
        didSet { apply() }
    }

    open override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + titleEdgeInsets.left + titleEdgeInsets.right, height: size.height + titleEdgeInsets.top + titleEdgeInsets.bottom)
    }

    open override var alignmentRectInsets: UIEdgeInsets {
        return alignmentEgdeInsets
    }

    open func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        backgroundColors[state.rawValue] = color
    }

    private func apply() {
        let stateBackgroundColor = backgroundColors[state.rawValue]
        let normalBackgroundColor = backgroundColors[UIControl.State.normal.rawValue]
        backgroundColor = stateBackgroundColor ?? normalBackgroundColor
    }
}
