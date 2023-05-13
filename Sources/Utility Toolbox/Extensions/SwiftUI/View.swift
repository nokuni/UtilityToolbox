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
    @MainActor public func image(isOpaque: Bool = false) -> UIImage? {
        if #available(iOS 16, *) {
            let renderer = ImageRenderer(content: self)
            renderer.scale = UIScreen.main.scale
            renderer.isOpaque = isOpaque
            let renderedImage = renderer.uiImage
            return renderedImage
        }
        return nil
    }
    
    /// Calls the completion handler whenever an animation on the given value completes.
    /// - Parameters:
    ///   - value: The value to observe for animations.
    ///   - completion: The completion callback to call once the animation completes.
    /// - Returns: A modified `View` instance with the observer attached.
    public typealias AnimationCompletion<Value: VectorArithmetic> = ModifiedContent<Self, AnimationCompletionObserverModifier<Value>>
    public func onAnimationCompleted<Value: VectorArithmetic>(for value: Value,
                                                       completion: @escaping () -> Void) -> AnimationCompletion<Value> {
        modifier(AnimationCompletionObserverModifier(observedValue: value, completion: completion))
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
    @ViewBuilder public func tooltip<Content: View>(
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
    public func completeTextFieldStyle<Field: RawRepresentable & Hashable>(
        text: Binding<String>,
        cornerRadius: CGFloat = 8,
        textColor: Color = .primary,
        backgroundPadding: CGFloat = 20,
        backgroundColor: Color = .gray5,
        focusField: FocusState<Field?>.Binding,
        focusAction: (() -> Void)? = nil,
        cancelAction: (() -> Void)? = nil) -> some View {
            modifier(CompleteFieldModifier(text: text,
                                           cornerRadius: cornerRadius,
                                           textColor: textColor,
                                           backgroundPadding: backgroundPadding,
                                           backgroundColor: backgroundColor,
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
