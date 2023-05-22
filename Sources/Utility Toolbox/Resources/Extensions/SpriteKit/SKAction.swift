//
//  SKAction.swift
//  
//
//  Created by Maertens Yann-Christophe on 08/03/23.
//

import SpriteKit

public extension SKAction {
    
    private static func constantDuration(pointA: CGPoint, pointB: CGPoint, speed: CGFloat) -> TimeInterval {
        let xDist = (pointB.x - pointA.x)
        let yDist = (pointB.y - pointA.y)
        let distance = sqrt((xDist * xDist) + (yDist * yDist))
        let duration : TimeInterval = TimeInterval(distance / speed)
        return duration
    }
    
    /// Returns an empty action.
    static func empty() -> SKAction {
        let action = SKAction.run { }
        return action
    }
    
    /// Creates a sequence of actions with their respective node.
    static func nodesSequence(sequence: [(SKAction, SKNode)],
                              index: Int = 0,
                              endCompletion: (() -> Void)? = nil) {
        guard !sequence.isEmpty else { return }
        guard sequence.isIndexInBounds(index) else {
            endCompletion?()
            return
        }
        let group = DispatchGroup()
        group.enter()
        sequence[index].1.run(sequence[index].0) { group.leave() }
        group.notify(queue: .main) {
            nodesSequence(sequence: sequence, index: index + 1, endCompletion: endCompletion)
        }
    }
    
    /// Creates an action that animates with a starting and ending completion block.
    static func animate(startCompletion: (() -> Void)? = nil,
                        action: SKAction,
                        node: SKNode,
                        endCompletion: (() -> Void)? = nil) {
        let group = DispatchGroup()
        group.enter()
        startCompletion?()
        node.run(action) { group.leave() }
        group.notify(queue: .main) { endCompletion?() }
    }
    
    /// Creates an action that animate a shape wave scaling up and fading out.
    static func shapeWave(on node: SKNode,
                          shape: SKShapeNode,
                          scale: CGFloat = 2,
                          scaleDuration: CGFloat = 0.5,
                          fadeOutDuration: CGFloat = 0.5,
                          repeatCount: Int = 5,
                          isRepeatingForever: Bool = false) {
        let sequence = SKAction.sequence([
            SKAction.scale(to: scale, duration: scaleDuration),
            SKAction.fadeOut(withDuration: fadeOutDuration),
            SKAction.scale(to: 1, duration: 0),
            SKAction.fadeIn(withDuration: 0)
        ])
        node.addChildSafely(shape)
        
        switch true {
        case isRepeatingForever:
            shape.run(SKAction.repeatForever(sequence))
        case repeatCount > 0:
            shape.run(SKAction.repeat(sequence, count: repeatCount))
        default:
            shape.removeFromParent()
            return
        }
    }
    
    /// Creates an action that changes filtered sprite's texture.
    static func setTexture(_ texture: SKTexture,
                           with filteringMode: SKTextureFilteringMode = .linear) -> SKAction {
        let sequence = SKAction.sequence([
            SKAction.setTexture(texture),
            SKAction.run { texture.filteringMode = filteringMode }
        ])
        return sequence
    }
    
    /// Shaking animation.
    static func shake(duration: Double = 0.5,
                      amplitudeX: CGFloat = 3,
                      amplitudeY: CGFloat = 3) -> SKAction {
        let numberOfShakes = duration / 0.015 / 2.0
        var actionsArray:[SKAction] = []
        for _ in 1...Int(numberOfShakes) {
            let dx = CGFloat(arc4random_uniform(UInt32(amplitudeX))) - CGFloat(amplitudeX / 2)
            let dy = CGFloat(arc4random_uniform(UInt32(amplitudeY))) - CGFloat(amplitudeY / 2)
            let forward = SKAction.moveBy(x: dx, y:dy, duration: 0.015)
            let reverse = forward.reversed()
            actionsArray.append(forward)
            actionsArray.append(reverse)
        }
        return SKAction.sequence(actionsArray)
    }
    
    /// Creates an action that animates changes to a filtered sprite's texture.
    static func animate(with images: [String],
                        filteringMode: SKTextureFilteringMode = .linear,
                        timePerFrame: TimeInterval = 0.5) -> SKAction {
        let textures = images.map { SKTexture(imageNamed: $0) }
        textures.forEach { $0.filteringMode = filteringMode }
        let animation = SKAction.animate(with: textures, timePerFrame: timePerFrame)
        return animation
    }
    
    /// Move a node from a position to another at constant speed.
    static func move(from pointA: CGPoint,
                     to pointB: CGPoint,
                     speed: CGFloat) -> SKAction {
        let duration = SKAction.constantDuration(pointA: pointA, pointB: pointB, speed: speed)
        let action = SKAction.move(to: pointB, duration: duration)
        return action
    }
    
    /// Fade out and in a node.
    static func fadeOutAndIn(fadeOutDuration: TimeInterval = 0.5,
                             fadeInDuration: TimeInterval = 0.5,
                             repeating repeatCount: Int = 1,
                             isRepeatingForever: Bool = false) -> SKAction {
        let sequence = SKAction.sequence([
            SKAction.fadeOut(withDuration: fadeOutDuration),
            SKAction.fadeIn(withDuration: fadeInDuration)
        ])
        return isRepeatingForever ?
        SKAction.repeatForever(sequence) :
        SKAction.repeat(sequence, count: repeatCount)
    }
    
    /// Scale up and down a node.
    static func scaleUpAndDown(from firstScale: CGFloat,
                               with scaleUpDuration: TimeInterval = 0.5,
                               to secondScale: CGFloat,
                               with scaleDownDuration: TimeInterval = 0.5,
                               repeating repeatCount: Int = 1,
                               isRepeatingForever: Bool = false) -> SKAction {
        let sequence = SKAction.sequence([
            SKAction.scale(to: firstScale, duration: scaleUpDuration),
            SKAction.scale(to: secondScale, duration: scaleDownDuration),
        ])
        return isRepeatingForever ?
        SKAction.repeatForever(sequence) :
        SKAction.repeat(sequence, count: repeatCount)
    }
    
    /// Move forth and back a node.
    static func moveForthAndBack(startPoint: CGPoint,
                                 startAction: (() -> Void)? = nil,
                                 endPoint: CGPoint,
                                 endAction: (() -> Void)? = nil,
                                 startDuration: TimeInterval = 0.5,
                                 endDuration: TimeInterval = 0.5) -> SKAction {
        let move = SKAction.sequence([
            SKAction.move(to: endPoint, duration: startDuration),
            SKAction.run { endAction?() },
            SKAction.move(to: startPoint, duration: endDuration),
            SKAction.run { startAction?() },
        ])
        return move
    }
    
    static func follow(_ followedNode: SKNode, duration: TimeInterval) -> SKAction {
        
        let customAction = { (node: SKNode, elapsedTime: CGFloat) in
            let dx = followedNode.position.x - node.position.x
            let dy = followedNode.position.y - node.position.y
            let angle = atan2(dx,dy)
            node.position.x += sin(angle) * 0.5
            node.position.y += cos(angle) * 0.5
        }
        
        let followAction = SKAction.customAction(withDuration: duration, actionBlock: customAction)
        
        return followAction
    }
    
    static func repeating(action: SKAction,
                          node: SKNode,
                          count: Int = 1,
                          isRepeatingForever: Bool = false) {
        switch true {
        case isRepeatingForever:
            node.run(SKAction.repeatForever(action))
        default:
            node.run(SKAction.repeat(action, count: count))
        }
    }
}
