//
//  TextFieldModifier.swift
//  
//
//  Created by Maertens Yann-Christophe on 03/05/23.
//

import SwiftUI

struct TextFieldModifier<Field: RawRepresentable & Hashable>: ViewModifier {
    var text: Binding<String>
    var cornerRadius: CGFloat
    var textColor: Color
    var backgroundColor: Color
    var height: CGFloat
    var focusField: FocusState<Field?>.Binding
    var focusAction: (() -> Void)?
    var cancelAction: (() -> Void)?
    
    init(text: Binding<String>,
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
    
    func body(content: Content) -> some View {
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
