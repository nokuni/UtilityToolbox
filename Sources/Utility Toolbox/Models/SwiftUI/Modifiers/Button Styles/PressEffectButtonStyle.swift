//
//  PressEffectButtonStyle.swift
//  
//
//  Created by Maertens Yann-Christophe on 28/03/23.
//

import SwiftUI

struct PressEffectButtonStyle: ButtonStyle {
    var pressure: CGFloat
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label.scaleEffect(configuration.isPressed ? pressure : 1)
    }
}
