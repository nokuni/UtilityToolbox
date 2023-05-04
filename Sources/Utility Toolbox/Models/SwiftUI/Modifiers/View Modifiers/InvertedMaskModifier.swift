//
//  InvertedMaskModifier.swift
//  
//
//  Created by Maertens Yann-Christophe on 03/05/23.
//

import SwiftUI

public struct InvertedMaskModifier<C: View>: ViewModifier {
    var additionalContent: C
    public func body(content: Content) -> some View {
        content
            .mask(
                ZStack {
                    content
                        .brightness(1)
                    additionalContent
                        .brightness(-1)
                }
                    .compositingGroup()
                    .luminanceToAlpha()
            )
    }
}
