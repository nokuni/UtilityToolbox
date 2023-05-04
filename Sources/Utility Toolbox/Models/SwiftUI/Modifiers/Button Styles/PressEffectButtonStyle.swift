//
//  PressEffectButtonStyle.swift
//  
//
//  Created by Maertens Yann-Christophe on 28/03/23.
//

import SwiftUI

public struct PressEffectButtonStyle: ButtonStyle {
    public var pressure: CGFloat
    public func makeBody(configuration: Configuration) -> some View {
        configuration
            .label.scaleEffect(configuration.isPressed ? pressure : 1)
    }
}
