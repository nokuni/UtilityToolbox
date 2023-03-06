//
//  ImageGradient.swift
//  
//
//  Created by Maertens Yann-Christophe on 25/02/23.
//

import UIKit

public struct ImageGradient {
    
    public init(rect: CGRect,
                points: ImageGradient.Points = .topToBottom,
                colors: [UIColor] = [.blue, .red]) {
        self.rect = rect
        self.points = points
        self.colors = colors
    }
    
    public var rect: CGRect
    public var points: Points
    public var colors: [UIColor]
    
    /// Points of the UIImage Gradient
    public enum Points {
        case topLeftToBottomRight
        case bottomRightToTopLeft
        case bottomLeftToTopRight
        case topRightToBottomLeft
        case bottomToTop
        case topToBottom
        
        var positions: (start: CGPoint, end: CGPoint) {
            switch self {
            case .topLeftToBottomRight:
                return (start: CGPoint(x: 0, y: 0), end: CGPoint(x: 1, y: 1))
            case .bottomRightToTopLeft:
                return (start: CGPoint(x: 1, y: 1), end: CGPoint(x: 0, y: 0))
            case .bottomLeftToTopRight:
                return (start: CGPoint(x: 0, y: 1), end: CGPoint(x: 1, y: 0))
            case .topRightToBottomLeft:
                return (start: CGPoint(x: 1, y: 0), end: CGPoint(x: 0, y: 1))
            case .bottomToTop:
                return (start: CGPoint(x: 0.5, y: 1), end: CGPoint(x: 0.5, y: 1))
            case .topToBottom:
                return (start: CGPoint(x: 0.5, y: 0), end: CGPoint(x: 0.5, y: 1))
            }
        }
    }
    /// Returns a UIImage defined by its dimension,  points and colors.
    public static func image(withBounds: CGRect, points: Points, colors: [CGColor]) -> UIImage {
        
        // Configure the gradient layer based on input
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = withBounds
        gradientLayer.colors = colors
        gradientLayer.startPoint = points.positions.start
        gradientLayer.endPoint = points.positions.end
        // Render the image using the gradient layer
        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
}
