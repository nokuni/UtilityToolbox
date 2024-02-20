//
//  CanvasBoard.swift
//  
//
//  Created by Maertens Yann-Christophe on 12/05/23.
//

import SwiftUI

public struct CanvasBoard: View {
    @ObservedObject var manager: CanvasManager
    
    public init(manager: CanvasManager) { self.manager = manager }
    
    public var body: some View {
        Canvas { context, _ in
            for line in manager.configuration.lines {
                var path = Path()
                path.addLines(line.points)
                context.stroke(path,
                               with: .color(line.color),
                               lineWidth: line.lineWidth)
            }
        }
        .gesture(manager.gesture)
    }
}
