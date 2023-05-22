//
//  ImageHighlight.swift
//  
//
//  Created by Maertens Yann-Christophe on 17/05/23.
//

import SwiftUI

public struct ImageHighlight: View {
    public var image: String
    public var color: Color
    public var alpha: Double
    public var interpolation: Image.Interpolation
    
    public init(image: String,
                color: Color,
                alpha: Double,
                interpolation: Image.Interpolation = .high) {
        self.image = image
        self.color = color
        self.alpha = alpha
        self.interpolation = interpolation
    }
    
    public var body: some View {
        Image(image)
            .interpolation(interpolation)
            .renderingMode(.template)
            .resizable()
            .foregroundColor(color)
            .opacity(alpha)
    }
}
