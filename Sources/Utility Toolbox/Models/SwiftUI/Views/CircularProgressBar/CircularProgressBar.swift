//
//  SwiftUIView.swift
//  
//
//  Created by Maertens Yann-Christophe on 10/05/23.
//

import SwiftUI

public enum LoadingDirection {
    case toRight
    case toLeft
    
    var scaleEffect: CGFloat {
        switch self {
        case .toRight:
            return 1
        case .toLeft:
            return -1
        }
    }
}

public enum LoadingPosition {
    case top
    case trailing
    case bottom
    case leading
    
    var degrees: CGFloat {
        switch self {
        case .top:
            return 270
        case .trailing:
            return 180
        case .bottom:
            return 90
        case .leading:
            return 0
        }
    }
}

public struct CircularProgressBar: View {
    @Binding public var value: CGFloat
    public var lineWidth: CGFloat
    public var lineCap: CGLineCap
    public var underColor: Color
    public var progressColor: Color
    public var position: LoadingPosition
    public var direction: LoadingDirection
    
    public init(value: Binding<CGFloat>,
                lineWidth: CGFloat,
                lineCap: CGLineCap = .square,
                underColor: Color = .ultraLightGray,
                progressColor: Color = .blue,
                position: LoadingPosition = .top,
                direction: LoadingDirection = .toRight) {
        self._value = value
        self.lineWidth = lineWidth
        self.lineCap = lineCap
        self.underColor = underColor
        self.progressColor = progressColor
        self.position = position
        self.direction = direction
    }
    
    public var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: lineWidth)
                .foregroundColor(underColor)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .rotationEffect(.degrees(position.degrees))
                .scaleEffect(x: direction.scaleEffect)
            
            Circle()
                .trim(from: 0, to: value)
                .stroke(progressColor,
                        style: StrokeStyle(lineWidth: lineWidth,
                                           lineCap: lineCap))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .rotationEffect(.degrees(position.degrees))
                .scaleEffect(x: direction.scaleEffect)
        }
    }
}
