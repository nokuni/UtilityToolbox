//
//  File.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import UIKit

public extension UIImage {
    
    /// UIImage with a color and a size.
    convenience init?(color: UIColor,
                      size: CGSize) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
    
    /// Gradient from UIImage.
    struct Gradient {
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
        static func image(withBounds: CGRect, points: Points, colors: [CGColor]) -> UIImage {
            
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
    
    /// Returns an UIImage of a rectangle.
    static func rectangle(size: CGSize,
                          color: UIColor,
                          cornerRadius: CGFloat) -> UIImage? {
        var image = UIImage(color: color, size: size)
        image = image?.withRoundedCorners(radius: cornerRadius)
        return image
    }
    
    private func withRoundedCorners(radius: CGFloat? = nil) -> UIImage? {
        let maxRadius = min(size.width, size.height) / 2
        let cornerRadius: CGFloat
        if let radius = radius, radius > 0 && radius <= maxRadius {
            cornerRadius = radius
        } else {
            cornerRadius = maxRadius
        }
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        let rect = CGRect(origin: .zero, size: size)
        UIBezierPath(roundedRect: rect, cornerRadius: cornerRadius).addClip()
        draw(in: rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
