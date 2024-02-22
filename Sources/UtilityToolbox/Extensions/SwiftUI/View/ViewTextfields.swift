//
//  ViewTextfields.swift
//  
//
//  Created by Yann Christophe MAERTENS on 22/05/2023.
//

import SwiftUI

// MARK: - Textfields

extension View {
    /// Accept only numbers from the binded string.
    public func acceptOnlyNumbers(text: Binding<String>) -> some View {
        modifier(OnlyNumbersModifier(text: text))
    }

    /// Limit the text of the binded string by a specific amount.
    public func limitText(text: Binding<String>, limit: Int) -> some View {
        modifier(TextLimiterModifier(text: text, limit: limit))
    }

    /// Custom implementation of a textfield.
    public func completeTextFieldStyle<Field: RawRepresentable & Hashable>(
        text: Binding<String>,
        cornerRadius: CGFloat = 8,
        textColor: Color = .primary,
        backgroundPadding: CGFloat = 20,
        backgroundColor: Color = .ultraLightGray,
        shadow: (color: Color, radius: CGFloat, x: CGFloat, y: CGFloat) = (.clear, 0, 0, 0),
        focusField: FocusState<Field?>.Binding,
        focusAction: (() -> Void)? = nil,
        cancelAction: (() -> Void)? = nil) -> some View {
            modifier(CompleteFieldModifier(text: text,
                                           cornerRadius: cornerRadius,
                                           textColor: textColor,
                                           backgroundPadding: backgroundPadding,
                                           backgroundColor: backgroundColor,
                                           shadow: shadow,
                                           focusField: focusField,
                                           focusAction: focusAction,
                                           cancelAction: cancelAction)
            )
        }
}
