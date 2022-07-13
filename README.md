# Button

[![Version](https://img.shields.io/github/release/lipka/Button.svg)](https://github.com/lipka/Button/releases)
[![Build Status](https://github.com/lipka/Button/workflows/Tests/badge.svg)](https://github.com/lipka/Button/actions)
![Swift Version](https://img.shields.io/badge/swift-5.2.0-orange.svg)

A `UIButton` subclass that makes it easy to use `UIColor` as the background and border color for different button states.

## Installation

### Swift Package Manager

For installation with [Swift Package Manager](https://github.com/apple/swift-package-manager), simply add the following to your `Package.swift`:

```swift
.package(url: "https://github.com/lipka/Button", from: "0.1.0")
```

## Usage

### Background Color

You can call `setBorderColor(_:, for:)` to set the background color for different `UIControl.State`s.

```swift
import Button

let button = Button()
button.setBackgroundColor(UIColor.red, for: .normal)
button.setBackgroundColor(UIColor.blue, for: .highlighted)
```

### Border Color

You can call `setBorderColor(_:, for:)` to set the border color for different `UIControl.State`s.

```swift
import Button

let button = Button()
button.setBorderColor(UIColor.red, for: .normal)
button.setBorderColor(UIColor.blue, for: .highlighted)
```
