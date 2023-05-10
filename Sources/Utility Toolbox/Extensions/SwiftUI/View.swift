//
//  View.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import SwiftUI

// MARK: - Utils

extension View {
    /// Returns a snapshot of a view as an image.
    @MainActor public func image() -> UIImage? {
        if #available(iOS 16, *) {
            let renderer = ImageRenderer(content: self)
            renderer.scale = UIScreen.main.scale
            renderer.isOpaque = true
            let renderedImage = renderer.uiImage
            return renderedImage
        }
        return nil
    }
}

// MARK: - Shapes

extension View {
    /// Clips this view to its bounding frame, with the specified corners and their radius.
    public func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
    
    /// Invert a view mask.
    public func invertedMask<Content : View>(_ content: Content) -> some View {
        modifier(InvertedMaskModifier(additionalContent: content))
    }
    
    /// Outline a view.
    public func outline(color: Color, radius: CGFloat, isTranparentInside: Bool) -> some View {
        modifier(OutlineModifier(color: color, radius: radius, isTransparentInside: isTranparentInside))
    }
    
    /// Show a window aside with a content inside.
    @ViewBuilder func tooltip<Content: View>(
        isPresented: Binding<Bool>,
        padding: CGFloat = 20,
        arrowDirection: UIPopoverArrowDirection,
        @ViewBuilder content: @escaping () -> Content) -> some View {
            self
                .background {
                    TooltipController(isPresented: isPresented,
                                      padding: padding,
                                      arrowDirection: arrowDirection,
                                      content: content().padding(padding))
                }
        }
}

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
    public func defaultTextFieldStyle<Field: RawRepresentable & Hashable>(
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
}

// MARK: - Buttons
extension View {
    /// Press button effect.
    public func pressEffect(pressure: CGFloat = 0.95) -> some View {
        buttonStyle(PressEffectButtonStyle(pressure: pressure))
    }
}
