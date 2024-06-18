//
//  CGRect+Extensions.swift
//
//
//  Created by Adam Wulf on 3/14/21.
//

import CoreGraphics

extension CGRect {
    /// Initializes a `CGRect` with the given `x`, `y`, `width`, and `height` values.
    /// - Parameters:
    ///   - x: The x-coordinate of the origin of the rectangle.
    ///   - y: The y-coordinate of the origin of the rectangle.
    ///   - width: The width of the rectangle.
    ///   - height: The height of the rectangle.
    public init(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) {
        self.init(x: x, y: y, width: width, height: height)
    }

    /// Initializes a `CGRect` with the given `x`, `y`, `width`, and `height` values.
    /// - Parameters:
    ///   - x: The x-coordinate of the origin of the rectangle.
    ///   - y: The y-coordinate of the origin of the rectangle.
    ///   - width: The width of the rectangle.
    ///   - height: The height of the rectangle.
    public init(_ x: Double, _ y: Double, _ width: Double, _ height: Double) {
        self.init(x: x, y: y, width: width, height: height)
    }

    /// Initializes a `CGRect` with the given `x`, `y`, `width`, and `height` values.
    /// - Parameters:
    ///   - x: The x-coordinate of the origin of the rectangle.
    ///   - y: The y-coordinate of the origin of the rectangle.
    ///   - width: The width of the rectangle.
    ///   - height: The height of the rectangle.
    public init(_ x: Int, _ y: Int, _ width: Int, _ height: Int) {
        self.init(x: x, y: y, width: width, height: height)
    }

    /// Initializes a `CGRect` with the given `origin` and `size` values.
    /// - Parameters:
    ///   - origin: The origin of the rectangle.
    ///   - size: The size of the rectangle.
    public init(_ origin: CGPoint, _ size: CGSize) {
        self.init(origin: origin, size: size)
    }

    /// Initializes a `CGRect` with the given `size`.
    /// - Parameter size: The size of the rectangle.
    public init(_ size: CGSize) {
        self.init(.zero, size)
    }

    /// Returns a new `CGRect` with the given `delta` inset from the edges.
    /// - Parameter delta: The amount to inset the edges of the rectangle.
    public func inset(by delta: CGFloat) -> CGRect {
        return insetBy(dx: delta, dy: delta)
    }

    /// Returns a new `CGRect` with the given `delta` expanded from the edges.
    /// - Parameter delta: The amount to expand the edges of the rectangle.
    public func expand(by delta: CGFloat) -> CGRect {
        return inset(by: -delta)
    }
}
