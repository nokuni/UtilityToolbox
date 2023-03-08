//
//  View.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import SwiftUI

public extension View {
    
    /// Clips this view to its bounding frame, with the specified corners and their radius.
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
    
    /// Accept only numbers from the binded string.
    func acceptOnlyNumbers(text: Binding<String>) -> some View {
        modifier(OnlyNumbersModifier(text: text))
    }
    
    /// Limit the text of the binded string by a specific amount.
    func limitText(text: Binding<String>, limit: Int) -> some View {
        modifier(TextLimiterModifier(text: text, limit: limit))
    }
}
