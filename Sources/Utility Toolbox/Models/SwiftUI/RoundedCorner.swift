//
//  RoundedCorner.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import SwiftUI

public struct RoundedCorner: Shape {
    
    public init(radius: CGFloat = .infinity,
                corners: UIRectCorner = .allCorners) {
        self.radius = radius
        self.corners = corners
    }
    
    public var radius: CGFloat
    public var corners: UIRectCorner
    
    public func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
