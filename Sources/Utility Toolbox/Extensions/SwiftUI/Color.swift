//
//  Color.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import SwiftUI

public extension Color {
    
    /// Allow to use hex codes in the color initialization.
    init(hex: UInt, alpha: Double = 1) {
        let red = Double((hex & 0xFF0000) >> 16) / 255
        let green = Double((hex & 0x00FF00) >> 8) / 255
        let blue = Double(hex & 0x0000FF) / 255
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
    
    /// A sixth-level shade of gray that adapts to the environment.
    static let gray6 = Color(UIColor.systemGray6)
    
    /// A fifth-level shade of gray that adapts to the environment.
    static let gray5 = Color(UIColor.systemGray5)
    
    /// A fourth-level shade of gray that adapts to the environment.
    static let gray4 = Color(UIColor.systemGray4)
    
    /// A third-level shade of gray that adapts to the environment.
    static let gray3 = Color(UIColor.systemGray3)
    
    /// A second-level shade of gray that adapts to the environment.
    static let gray2 = Color(UIColor.systemGray2)
    
    /// The color for the main background of your interface.
    static let background = Color(UIColor.systemBackground)
}
