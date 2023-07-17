//
//  File.swift
//  
//
//  Created by Yann Christophe Maertens on 17/07/2023.
//

import SwiftUI

public struct SearchBar<Field: RawRepresentable & Hashable, Icon: View>: View {
    public var text: Binding<String>
    public var prompt: String
    public var cornerRadius: CGFloat
    public var textColor: Color
    public var backgroundPadding: CGFloat
    public var backgroundColor: Color
    public var shadow: (color: Color, radius: CGFloat, x: CGFloat, y: CGFloat)
    public var focusField: FocusState<Field?>.Binding
    public var focusAction: (() -> Void)?
    public var cancelAction: (() -> Void)?
    public var icon: Icon
    
    @State private var scrollViewContentSize: CGSize = .zero
    
    public init(text: Binding<String>,
                prompt: String,
                cornerRadius: CGFloat = 8,
                textColor: Color = .primary,
                backgroundPadding: CGFloat = 16,
                backgroundColor: Color = .ultraLightGray,
                shadow: (color: Color, radius: CGFloat, x: CGFloat, y: CGFloat) = (.clear, 0, 0, 0),
                focusField: FocusState<Field?>.Binding,
                focusAction: (() -> Void)? = nil,
                cancelAction: (() -> Void)? = nil,
                @ViewBuilder icon: () -> Icon) {
        self.text = text
        self.prompt = prompt
        self.cornerRadius = cornerRadius
        self.textColor = textColor
        self.backgroundPadding = backgroundPadding
        self.backgroundColor = backgroundColor
        self.shadow = shadow
        self.focusField = focusField
        self.focusAction = focusAction
        self.cancelAction = cancelAction
        self.icon = icon()
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .foregroundColor(backgroundColor)
            .frame(maxWidth: UIScreen.main.bounds.width,
                   minHeight: scrollViewContentSize.height,
                   maxHeight: scrollViewContentSize.height)
            .shadow(color: shadow.0, radius: shadow.1, x: shadow.2, y: shadow.3)
            .overlay(
                HStack {
                    icon
                    TextField(prompt, text: text)
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
