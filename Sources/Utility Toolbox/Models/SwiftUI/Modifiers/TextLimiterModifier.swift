//
//  File.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import SwiftUI

struct TextLimiterModifier: ViewModifier {
    @Binding var text: String
    var limit: Int
    func body(content: Content) -> some View {
        content
            .onChange(of: text, perform: { newValue in
                if text.count < limit { text = newValue } else {
                    text = String(text.prefix(limit))
                }
            })
    }
}
