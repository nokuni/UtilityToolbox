//
//  SKNode.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import SpriteKit

public extension SKNode {
    
    // MARK: - BASIC
    
    /// Returns true if the node is a SKScene and false otherwise.
    var isScene: Bool {
        self is SKScene
    }
    
    /// Returns nodes with a specific name.
    func childNodes(named name: String) -> [SKNode] {
        let nodes = children.filter { $0.name?.contains(name) ?? false }
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
    
    /// Returns the nodes touched on screen.
    func touchedNodes(_ touches: Set<UITouch>) -> [SKNode] {
        guard let touch = touches.first else { return [] }
        let location = touch.location(in: self)
        let touchedNodes = nodes(at: location)
        guard !touchedNodes.isEmpty else { return [] }
        return touchedNodes
    }
    
    /// Adds safely a node to the end of the receiver's list of child nodes.
    func addChildSafely(_ node: SKNode) {
        if !children.contains(node) { addChild(node) }
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
        return isScene ?
        CGPoint.zero :
        CGPoint(x: -(frame.size.width / 2),
                y: -(frame.size.height / 2))
    }
    
    private var bottomRightCornerOrigin: CGPoint {
        return isScene ?
        CGPoint(x: frame.size.width, y: 0) :
        CGPoint(x: -(frame.size.width / 2) + frame.size.width,
                y: -(frame.size.height / 2))
    }
    
    private var topLeftCornerOrigin: CGPoint {
        return isScene ?
        CGPoint(x: 0, y: frame.size.height) :
        CGPoint(x: -(frame.size.width / 2),
                y: -(frame.size.height / 2) + frame.size.height)
    }
    
    private var topRightCornerOrigin: CGPoint {
        return isScene ?
        CGPoint(x: frame.size.width, y: frame.size.height) :
        CGPoint(x: -(frame.size.width / 2) + frame.size.width,
                y: -(frame.size.height / 2) + frame.size.height)
    }
    
    /// Returns the corner position of a quadrilateral shape.
    func cornerPosition(corner: QuadrilateralCorner,
                        node: SKNode,
                        padding: CGFloat = 0) -> CGPoint {
        let position = cornerOrigin(corner)
        
        var alignedPosition: CGPoint = .zero
        
        switch corner {
        case .topLeft:
            alignedPosition = CGPoint(x: position.x + padding,
                                      y: position.y - padding)
        case .topRight:
            alignedPosition = CGPoint(x: position.x - padding,
                                      y: position.y - padding)
        case .bottomRight:
            alignedPosition = CGPoint(x: position.x + padding,
                                      y: position.y + padding)
        case .bottomLeft:
            alignedPosition = CGPoint(x: position.x - padding,
                                      y: position.y + padding)
        }
        
        return alignedPosition
    }
}
