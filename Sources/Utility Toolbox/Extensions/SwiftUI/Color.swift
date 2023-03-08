//
//  Color.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import SwiftUI

extension Color {
    
    /// Allow to use hex codes in the color initialization.
    init(hex: UInt, alpha: Double = 1) {
        let red = Double((hex & 0xFF0000) >> 16) / 255
        let green = Double((hex & 0x00FF00) >> 8) / 255
        let blue = Double(hex & 0x0000FF) / 255
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
}
