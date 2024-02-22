//
//  TextLimiterModifier.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import SwiftUI

public struct TextLimiterModifier: ViewModifier {
    @Binding public var text: String
    public var limit: Int
    public func body(content: Content) -> some View {
        content
            .onChange(of: text, perform: { newValue in
                if text.count < limit { text = newValue } else {
                    text = String(text.prefix(limit))
                }
            })
    }
}
