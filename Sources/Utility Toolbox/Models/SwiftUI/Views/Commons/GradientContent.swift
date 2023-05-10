//
//  SwiftUIView.swift
//  
//
//  Created by Yann Christophe MAERTENS on 04/05/2023.
//

import SwiftUI

public enum GradientViewType {
    case linear
    case radial
    case angular
    case elliptical
}

public struct GradientContent<Content: View>: View {
    private var type: GradientViewType
    public var gradient: Gradient
    public var startPoint: UnitPoint?
    public var endPoint: UnitPoint?
    public var center: UnitPoint?
    public var startRadius: CGFloat?
    public var endRadius: CGFloat?
    public var angle: Angle?
    public var startRadiusFraction: CGFloat?
    public var endRadiusFraction: CGFloat?
    public var content: Content

    /// Initialize the properties for the Linear gradient.
    public init(gradient: Gradient,
                startPoint: UnitPoint,
                endPoint: UnitPoint,
                @ViewBuilder content: @escaping () -> Content) {
        self.type = .linear
        self.gradient = gradient
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.content = content()
    }

    /// Initialize the properties for the radial gradient.
    public init(gradient: Gradient,
                center: UnitPoint,
                startRadius: CGFloat,
                endRadius: CGFloat,
                @ViewBuilder content: @escaping () -> Content) {
        self.type = .radial
        self.gradient = gradient
        self.center = center
        self.startRadius = startRadius
        self.endRadius = endRadius
        self.content = content()
    }

    /// Initialize the properties for the angular gradient.
    public init(gradient: Gradient,
                center: UnitPoint,
                angle: Angle,
                @ViewBuilder content: @escaping () -> Content) {
        self.type = .angular
        self.gradient = gradient
        self.center = center
        self.angle = angle
        self.content = content()
    }

    /// Initialize the properties for the elliptical gradient.
    public init(gradient: Gradient,
                center: UnitPoint,
                startRadiusFraction: CGFloat,
                endRadiusFraction: CGFloat,
                @ViewBuilder content: @escaping () -> Content) {
        self.type = .elliptical
        self.gradient = gradient
        self.center = center
        self.startRadiusFraction = startRadiusFraction
        self.endRadiusFraction = endRadiusFraction
        self.content = content()
    }

    public var body: some View {
        gradientView()
            .mask { content }
    }

    @ViewBuilder
    func gradientView() -> some View {
        switch type {
        case .linear:
            if let startPoint = startPoint,
               let endPoint = endPoint {
                LinearGradient(gradient: gradient, startPoint: startPoint, endPoint: endPoint)
            }
        case .radial:
            if let center = center,
               let startRadius = startRadius,
               let endRadius = endRadius {
                RadialGradient(gradient: gradient, center: center, startRadius: startRadius, endRadius: endRadius)
            }
        case .angular:
            if let center = center,
               let angle = angle {
                AngularGradient(gradient: gradient, center: center, angle: angle)
            }
        case .elliptical:
            if let center = center,
               let startRadiusFraction = startRadiusFraction,
               let endRadiusFraction = endRadiusFraction {
                EllipticalGradient(gradient: gradient, center: center, startRadiusFraction: startRadiusFraction, endRadiusFraction: endRadiusFraction)
            }
        }
    }
}
