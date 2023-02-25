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
