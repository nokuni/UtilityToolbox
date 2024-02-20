//
//  CanvasManager.swift
//  
//
//  Created by Maertens Yann-Christophe on 12/05/23.
//

import SwiftUI

public final class CanvasManager: ObservableObject {
    
    public init(lineColor: Color = .black, lineWidth: Double = 5.0) {
        self.lineColor = lineColor
        self.lineWidth = lineWidth
        configuration = LineConfiguration(currentLine: Line(color: lineColor, lineWidth: lineWidth))
    }
    
    @Published public var configuration = LineConfiguration()
    
    var lineColor: Color
    var lineWidth: Double
    
    public struct LineConfiguration {
        public init(currentLine: Line = Line(),
                    lines: [Line] = [],
                    thickness: Double = 5.0) {
            self.currentLine = currentLine
            self.lines = lines
            self.thickness = thickness
        }
        
        public var currentLine: Line
        public var lines: [Line]
        public var thickness: Double
    }
    
    public struct Line {
        public init(points: [CGPoint] = [],
                    color: Color = .black,
                    lineWidth: Double = 5.0) {
            self.points = points
            self.color = color
            self.lineWidth = lineWidth
        }
        
        public var points: [CGPoint]
        public var color: Color
        public var lineWidth: Double
    }
    
    @ViewBuilder
    var canvasView: some View {
        canvas
            .gesture(canvasGesture)
    }
    
    @ViewBuilder
    private var canvas: some View {
        Canvas { context, _ in
            for line in self.configuration.lines {
                var path = Path()
                path.addLines(line.points)
                context.stroke(path,
                               with: .color(line.color),
                               lineWidth: line.lineWidth)
            }
        }
    }
    
    private var canvasGesture: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged({ value in
                let newPoint = value.location
                self.configuration.currentLine.points.append(newPoint)
                self.configuration.lines.append(self.configuration.currentLine)
            })
            .onEnded({ value in
                self.configuration.lines.append(self.configuration.currentLine)
                self.configuration.currentLine = Line(color: self.lineColor, lineWidth: self.lineWidth)
            })
    }
}
