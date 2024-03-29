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
        return CGSize(width: UIScreen.width, height: UIScreen.height)
    }
    
    static func + (size: CGSize, value: CGFloat) -> CGSize {
        return CGSize(width: size.width + value, height: size.height + value)
    }
    
    static func - (size: CGSize, value: CGFloat) -> CGSize {
        return CGSize(width: size.width - value, height: size.height - value)
    }
    
    static func * (size: CGSize, value: CGFloat) -> CGSize {
        return CGSize(width: size.width * value, height: size.height * value)
    }
    
    static func / (size: CGSize, value: CGFloat) -> CGSize {
        return CGSize(width: size.width / value, height: size.height / value)
    }
}
