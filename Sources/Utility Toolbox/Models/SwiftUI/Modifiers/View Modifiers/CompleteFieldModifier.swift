//
//  CompleteFieldModifier.swift
//  
//
//  Created by Maertens Yann-Christophe on 03/05/23.
//

import SwiftUI

public struct CompleteFieldModifier<Field: RawRepresentable & Hashable>: ViewModifier {
    public var text: Binding<String>
    public var cornerRadius: CGFloat
    public var textColor: Color
    public var backgroundPadding: CGFloat
    public var backgroundColor: Color
    public var shadow: (color: Color, radius: CGFloat, x: CGFloat, y: CGFloat)
    public var focusField: FocusState<Field?>.Binding
    public var focusAction: (() -> Void)?
    public var cancelAction: (() -> Void)?
    
    @State private var scrollViewContentSize: CGSize = .zero
    
    public init(text: Binding<String>,
                cornerRadius: CGFloat,
                textColor: Color,
                backgroundPadding: CGFloat,
                backgroundColor: Color,
                shadow: (color: Color, radius: CGFloat, x: CGFloat, y: CGFloat),
                focusField: FocusState<Field?>.Binding,
                focusAction: (() -> Void)?,
                cancelAction: (() -> Void)?) {
        self.text = text
        self.cornerRadius = cornerRadius
        self.textColor = textColor
        self.backgroundPadding = backgroundPadding
        self.backgroundColor = backgroundColor
        self.shadow = shadow
        self.focusField = focusField
        self.focusAction = focusAction
        self.cancelAction = cancelAction
    }
    
    public func body(content: Content) -> some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .foregroundColor(backgroundColor)
            .frame(maxWidth: UIScreen.main.bounds.width,
                   minHeight: scrollViewContentSize.height,
                   maxHeight: scrollViewContentSize.height)
            .shadow(color: shadow.0, radius: shadow.1, x: shadow.2, y: shadow.3)
            .overlay(
                HStack {
                    content
                        .padding(backgroundPadding)
                        .background(
                            GeometryReader { geo -> Color in
                                DispatchQueue.main.async {
                                    scrollViewContentSize = geo.size
                                }
                                return Color.clear
                            }
                        )
                    if !text.wrappedValue.isEmpty {
                        Button(action: {
                            self.text.wrappedValue = ""
                        }) {
                            Image(systemName: "multiply.circle.fill")
                        }
                        .foregroundColor(textColor)
                    }
                    if focusField.wrappedValue != nil {
                        Button(LocalizedStringKey("Cancel")) {
                            withAnimation {
                                cancelAction?()
                                focusField.wrappedValue = nil
                            }
                        }
                        .foregroundColor(.accentColor)
                    }
                }
                    .padding(.horizontal)
            )
            .onChange(of: focusField.wrappedValue) { _ in
                if focusField.wrappedValue != nil { focusAction?() }
            }
    }
}
