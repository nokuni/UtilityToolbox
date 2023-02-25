//
//  SKScene.swift
//  
//
//  Created by Maertens Yann-Christophe on 25/02/23.
//

import SpriteKit

extension SKScene {
    
    /// Setup the scene with basic arguments.
    func setup(name: String? = nil,
               size: CGSize = CGSize.screen,
               gravity: CGVector = CGVector.zero) {
        self.name = name
        self.size = size
        self.physicsWorld.gravity = gravity
    }
}
