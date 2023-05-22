//
//  ProgressBar.swift
//  
//
//  Created by Yann Christophe MAERTENS on 09/05/2023.
//

import SwiftUI

public struct ProgressBar: View {
    
    @Binding public var value: CGFloat
    public var cornerRadius: CGFloat
    public var underColor: Color
    public var progressColor: Color
    
    public init(value: Binding<CGFloat>,
                cornerRadius: CGFloat = 10,
                underColor: Color = .ultraLightGray,
                progressColor: Color = .blue) {
        self._value = value
        self.cornerRadius = cornerRadius
        self.underColor = underColor
        self.progressColor = progressColor
    }
    
    public var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(underColor)
                    .frame(width: geometry.size.width,
                           height: geometry.size.height)
                
                Rectangle()
                    .foregroundColor(progressColor)
                    .frame(width: min(value * geometry.size.width, geometry.size.width),
                           height: geometry.size.height)
                    .animation(.linear, value: value)
            }
            .cornerRadius(cornerRadius)
        }
    }
}
