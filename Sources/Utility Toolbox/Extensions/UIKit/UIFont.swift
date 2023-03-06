//
//  UIFont.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import UIKit

public extension UIFont {
    
    /// A random font name from the system
    static var firstSystemFontName: String? {
        guard let randomFamily = SystemFontFamily.allCases.first else { return nil }
        guard let randomFont = randomFamily.fonts.first else { return nil }
        return randomFont.rawValue
    }
    
    /// A random font name from the system
    static var randomSystemFontName: String? {
        guard let randomFamily = SystemFontFamily.allCases.randomElement() else { return nil }
        guard let randomFont = randomFamily.fonts.randomElement() else { return nil }
        return randomFont.rawValue
    }
}
