//
//  CGPoint.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import UIKit
import SwiftUI

public extension CGPoint {

    /// The center position of the current device.
    static var center: CGPoint {
        return CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
    }
    
    static func + (point: CGPoint, value: CGFloat) -> CGPoint {
        return CGPoint(x: point.x + value, y: point.y + value)
    }
    
    static func - (point: CGPoint, value: CGFloat) -> CGPoint {
        return CGPoint(x: point.x - value, y: point.y - value)
    }
    
    static func * (point: CGPoint, value: CGFloat) -> CGPoint {
        return CGPoint(x: point.x * value, y: point.y * value)
    }
    
    static func / (point: CGPoint, value: CGFloat) -> CGPoint {
        return CGPoint(x: point.x / value, y: point.y / value)
    }

    /// Returns the bottom left corner position from this position.
    func bottomLeftCorner(padding: EdgeInsets) -> CGPoint {
        return CGPoint(x: self.x - (CGSize.screen.width / 2) + padding.leading - padding.trailing,
                       y: self.y - (CGSize.screen.height / 2) + padding.bottom - padding.top)
    }

    /// Returns the bottom right corner position from this position.
    func bottomRightCorner(padding: EdgeInsets) -> CGPoint {
        return CGPoint(x: self.x + (CGSize.screen.width / 2) + padding.leading - padding.trailing,
                       y: self.y - (CGSize.screen.height / 2) + padding.bottom - padding.top)
    }

    /// Returns the top left corner position from this position.
    func topLeftCorner(padding: EdgeInsets) -> CGPoint {
        return CGPoint(x: self.x - (CGSize.screen.width / 2) + padding.leading - padding.trailing,
                       y: self.y + (CGSize.screen.height / 2) + padding.bottom - padding.top)
    }

    /// Returns the top right corner position from this position.
    func topRightCorner(padding: EdgeInsets) -> CGPoint {
        return CGPoint(x: self.x + (CGSize.screen.width / 2) + padding.leading - padding.trailing,
                       y: self.y + (CGSize.screen.height / 2) + padding.bottom - padding.top)
    }
}
