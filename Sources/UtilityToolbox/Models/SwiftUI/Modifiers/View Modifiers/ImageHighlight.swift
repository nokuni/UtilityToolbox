//
//  ImageHighlight.swift
//  
//
//  Created by Maertens Yann-Christophe on 17/05/23.
//

import SwiftUI

public struct ImageHighlightModifier: ImageModifier {
    public var color: Color
    public var alpha: Double
    public var interpolation: Image.Interpolation
    public func body(image: Image) -> some View {
        image
            .interpolation(interpolation)
            .renderingMode(.template)
            .resizable()
            .foregroundColor(color)
            .opacity(alpha)
    }
}
