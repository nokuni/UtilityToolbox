//
//  ViewButtons.swift
//  
//
//  Created by Maertens Yann-Christophe on 23/05/23.
//

import SwiftUI

// MARK: - Buttons
extension View {
    /// Press button effect.
    public func pressEffect(pressure: CGFloat = 0.95) -> some View {
        buttonStyle(PressEffectButtonStyle(pressure: pressure))
    }
}
