//
//  TextFieldModifier.swift
//  
//
//  Created by Maertens Yann-Christophe on 03/05/23.
//

import SwiftUI

public struct TextFieldModifier<Field: RawRepresentable & Hashable>: ViewModifier {
    public var text: Binding<String>
    public var cornerRadius: CGFloat
    public var textColor: Color
    public var backgroundColor: Color
    public var height: CGFloat
    public var focusField: FocusState<Field?>.Binding
    public var focusAction: (() -> Void)?
    public var cancelAction: (() -> Void)?
    
    public init(text: Binding<String>,
                cornerRadius: CGFloat = 8,
                textColor: Color = .black,
                backgroundColor: Color = .gray5,
                height: CGFloat = CGSize.screen.height * 0.05,
                focusField: FocusState<Field?>.Binding,
                focusAction: (() -> Void)?,
                cancelAction: (() -> Void)?) {
        self.text = text
        self.cornerRadius = cornerRadius
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.height = height
        self.focusField = focusField
        self.focusAction = focusAction
        self.cancelAction = cancelAction
    }
    
    public func body(content: Content) -> some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .foregroundColor(backgroundColor)
            .frame(maxWidth: UIScreen.main.bounds.width,
                   minHeight: height,
                   maxHeight: height)
            .overlay(
                HStack {
                    content
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