//
//  OutlineModifier.swift
//  
//
//  Created by Maertens Yann-Christophe on 03/05/23.
//

import SwiftUI

struct OutlineModifier: ViewModifier {
    var color: Color
    var radius: CGFloat
    func body(content: Content) -> some View {
        content
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
    }
}
