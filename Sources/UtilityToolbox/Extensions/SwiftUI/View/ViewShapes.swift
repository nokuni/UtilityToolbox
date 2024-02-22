//
//  ViewShapes.swift
//  
//
//  Created by Yann Christophe MAERTENS on 22/05/2023.
//

import SwiftUI

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
