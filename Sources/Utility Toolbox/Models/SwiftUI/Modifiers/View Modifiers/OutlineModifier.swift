//
//  OutlineModifier.swift
//  
//
//  Created by Maertens Yann-Christophe on 03/05/23.
//

import SwiftUI

public struct OutlineModifier: ViewModifier {
    var color: Color
    var radius: CGFloat
    var isTransparentInside: Bool
    public func body(content: Content) -> some View {
        content
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .invertedMask(isTransparentInside ? content : nil)
    }
}
