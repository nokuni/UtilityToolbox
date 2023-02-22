//
//  CGSize.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import UIKit

public extension CGSize {

    /// The screen size of the current device.
    static var screen: CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
    
    static func + (size: CGSize, value: CGFloat) -> CGSize {
        return CGSize(width: size.width + value, height: size.width + value)
    }
    
    static func - (size: CGSize, value: CGFloat) -> CGSize {
        return CGSize(width: size.width - value, height: size.width - value)
    }
    
    static func * (size: CGSize, value: CGFloat) -> CGSize {
        return CGSize(width: size.width * value, height: size.width * value)
    }
    
    static func / (size: CGSize, value: CGFloat) -> CGSize {
        return CGSize(width: size.width / value, height: size.width / value)
    }
}
