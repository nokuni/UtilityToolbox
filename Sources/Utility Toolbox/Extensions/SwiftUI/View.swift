//
//  View.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import SwiftUI

public extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
    
    func acceptOnlyNumbers(text: Binding<String>) -> some View {
        modifier(OnlyNumbersModifier(text: text))
    }
    
    func limitText(text: Binding<String>, limit: Int) -> some View {
        modifier(TextLimiterModifier(text: text, limit: limit))
    }
}
