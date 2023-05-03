//
//  Font.swift
//  
//
//  Created by Maertens Yann-Christophe on 08/03/23.
//

import SwiftUI

public extension Font {
    /// Creates a custom font with the given system name and size that scales with the body text style.
    static func custom(systemName: SystemFontName, size: CGFloat) -> Font {
        return custom(systemName.rawValue, size: size)
    }
}
