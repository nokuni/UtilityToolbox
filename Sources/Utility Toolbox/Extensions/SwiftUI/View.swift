//
//  View.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import SwiftUI

public extension View {
    
    // MARK: - Modifiers
    
    /// Accept only numbers from the binded string.
    func acceptOnlyNumbers(text: Binding<String>) -> some View {
        modifier(OnlyNumbersModifier(text: text))
    }
    
    /// Limit the text © of the binded string by a specific amount.
    func limitText(text: Binding<String>, limit: Int) -> some View {
        modifier(TextLimiterModifier(text: text, limit: limit))
    }
    
    // MARK: - Button Style
    
    /// Press button effect.
    func pressEffect(pressure: CGFloat = 0.95) -> some View {
        buttonStyle(PressEffectButtonStyle(pressure: pressure))
    }
    
    // MARK: Clipshape
    
    /// Clips this view to its bounding frame, with the specified corners and their radius.
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
    
    func invertedMask<Content : View>(_ content: Content) -> some View {
        modifier(InvertedMaskModifier(additionalContent: content))
    }
    
    /// Outline a view.
    func outline(color: Color, radius: CGFloat, isTranparentInside: Bool) -> some View {
        modifier(OutlineModifier(color: color, radius: radius, isTransparentInside: isTranparentInside))
    }
    
    func defaultTextFieldStyle<Field: RawRepresentable & Hashable>(
        text: Binding<String>,
        cornerRadius: CGFloat = 8,
        textColor: Color = .primary,
        backgroundColor: Color = .gray5,
        height: CGFloat = CGSize.screen.height * 0.05,
        focusField: FocusState<Field?>.Binding,
        focusAction: (() -> Void)? = nil,
        cancelAction: (() -> Void)? = nil) -> some View {
            modifier(TextFieldModifier(text: text,
                                       cornerRadius: cornerRadius,
                                       textColor: textColor,
                                       backgroundColor: backgroundColor,
                                       height: height,
                                       focusField: focusField,
                                       focusAction: focusAction,
                                       cancelAction: cancelAction)
            )
        }
    
    // MARK: - Utils
    
    /// Returns a snapshot of a view as an image.
    @MainActor func image() -> UIImage? {
        if #available(iOS 16, *) {
            let renderer = ImageRenderer(content: self)
            renderer.scale = UIScreen.main.scale
            let renderedImage = renderer.uiImage
            return renderedImage
        }
        return nil
    }
}
