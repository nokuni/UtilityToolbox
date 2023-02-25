//
//  File.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import Foundation

import SpriteKit

public extension SKNode {
    
    // MARK: - BASIC
    
    /// Returns nodes with a specific name.
    func childNodes(named name: String) -> [SKNode] {
        let nodes = self.children.filter { $0.name?.contains(name) ?? false }
        return nodes
    }
    
    /// Removes nodes with a specific name.
    func removeAllChildNodes(named name: String) {
        childNodes(named: name).forEach { $0.removeFromParent() }
    }
    
    /// Returns true if a node with a specific name is existing and false otherwise.
    func isExistingChildNode(named name: String) -> Bool {
        self.childNode(withName: name) != nil
    }
    
    /// Returns the amount of nodes with a specific name.
    func childNodesCount(named name: String) -> Int {
        let nodes = childNodes(named: name)
        return nodes.count
    }
    
    // MARK: - Quadrilateral Corners
    
    /// Represents the four corners of a quadrilateral shape.
    enum QuadrilateralCorner {
        case topLeft
        case topRight
        case bottomRight
        case bottomLeft
    }
    
    private func cornerOrigin(_ corner: QuadrilateralCorner) -> CGPoint {
        switch corner {
        case .topLeft: return topLeftCornerOrigin
        case .topRight: return topRightCornerOrigin
        case .bottomRight: return bottomRightCornerOrigin
        case .bottomLeft: return bottomLeftCornerOrigin
        }
    }
    
    private var bottomLeftCornerOrigin: CGPoint {
        CGPoint(x: -(self.frame.size.width / 2),
                y: -(self.frame.size.height / 2)
        )
    }
    
    private var bottomRightCornerOrigin: CGPoint {
        CGPoint(x: -(self.frame.size.width / 2) + self.frame.size.width,
                y: -(self.frame.size.height / 2)
        )
    }
    
    private var topLeftCornerOrigin: CGPoint {
        CGPoint(x: -(self.frame.size.width / 2),
                y: -(self.frame.size.height / 2) + self.frame.size.height
        )
    }
    
    private var topRightCornerOrigin: CGPoint {
        CGPoint(x: -(self.frame.size.width / 2) + self.frame.size.width,
                y: -(self.frame.size.height / 2) + self.frame.size.height
        )
    }
    
    /// Returns the corner position of a quadrilateral shape.
    func cornerPosition(corner: QuadrilateralCorner,
                        node: SKNode,
                        padding: CGFloat = 0,
                        hasAlignment: Bool = false) -> CGPoint {
        let position = cornerOrigin(corner)
        let withoutAlignmentPosition = CGPoint(
            x: position.x + node.frame.size.width,
            y: position.y + node.frame.size.height
        )
        let withAlignmentPosition = CGPoint(
            x: position.x + padding,
            y: position.y - padding
        )
        return hasAlignment ?
        withAlignmentPosition :
        withoutAlignmentPosition
    }
}
