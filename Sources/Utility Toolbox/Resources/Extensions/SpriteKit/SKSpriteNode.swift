//
//  SKSpriteNode.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import SpriteKit

public extension SKSpriteNode {
    
    /// Creates a sprite with a gradient texture.
    convenience init(gradient: ImageGradient) {
        self.init(texture: SKTexture(gradient: gradient))
    }
}
