//
//  Hexagon.swift
//  
//
//  Created by Maertens Yann-Christophe on 10/05/23.
//

import SwiftUI

public struct Hexagon: Shape {
    
    public init() { }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.size.height, rect.size.width) / 2
        let corners = corners(center: center, radius: radius)
        path.move(to: corners[0])
        corners[1...5].forEach() { point in
            path.addLine(to: point)
        }
        path.closeSubpath()
        return path
    }
    
    private func corners(center: CGPoint, radius: CGFloat) -> [CGPoint] {
        var points: [CGPoint] = []
        for index in 0..<6 {
            let angle = CGFloat.pi / 3 * CGFloat(index)
            let point = CGPoint(
                x: center.x + radius * cos(angle),
                y: center.y + radius * sin(angle)
            )
            points.append(point)
        }
        return points
    }
}
