//
//  CGPoint.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import UIKit

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
    
    var bottomLeftCorner: CGPoint {
        return CGPoint(x: self.x - (CGSize.screen.width / 2),
                       y: self.y - (CGSize.screen.height / 2))
    }
    
    var bottomRightCorner: CGPoint {
        return CGPoint(x: self.x + (CGSize.screen.width / 2),
                       y: self.y - (CGSize.screen.height / 2))
    }
    
    var topLeftCorner: CGPoint {
        return CGPoint(x: self.x - (CGSize.screen.width / 2),
                       y: self.y + (CGSize.screen.height / 2))
    }
    
    var topRightCorner: CGPoint {
        return CGPoint(x: self.x + (CGSize.screen.width / 2),
                       y: self.y + (CGSize.screen.height / 2))
    }
}
