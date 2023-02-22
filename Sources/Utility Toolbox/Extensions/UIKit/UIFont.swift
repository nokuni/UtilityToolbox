//
//  UIFont.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import UIKit

public extension UIFont {
    
    /// A random font name from the system
    static var randomSystemFontName: String? {
        guard let randomFamilyName = UIFont.familyNames.randomElement() else {
            return nil
        }
        guard let randomFontName = UIFont.fontNames(forFamilyName: randomFamilyName).randomElement() else {
            return nil
        }
        return randomFontName
    }
}
