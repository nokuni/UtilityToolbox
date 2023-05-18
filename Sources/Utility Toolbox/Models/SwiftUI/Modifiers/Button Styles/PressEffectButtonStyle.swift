//
//  PressEffectButtonStyle.swift
//  
//
//  Created by Maertens Yann-Christophe on 28/03/23.
//

import SwiftUI

public struct PressEffectButtonStyle: ButtonStyle {
    public var pressure: CGFloat
    public var completion: (() -> Void)?
    public func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .scaleEffect(configuration.isPressed ? pressure : 1)
            .onChange(of: configuration.isPressed) { newValue in
                if !configuration.isPressed { completion?() }
            }
    }
}
