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
        guard let firstFamilyName = UIFont.familyNames.first else {
            return nil
        }
        guard let firstFontName = UIFont.fontNames(forFamilyName: firstFamilyName).first else {
            return nil
        }
        return firstFontName
    }
    
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
