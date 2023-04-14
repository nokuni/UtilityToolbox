//
//  SKScene.swift
//  
//
//  Created by Maertens Yann-Christophe on 25/02/23.
//

import SpriteKit

extension SKScene: SKPhysicsContactDelegate { }

public extension SKScene {
    
    struct SceneConfiguration {
        public init(name: String? = nil,
                    size: CGSize = .screen,
                    backgroundColor: UIColor = .clear,
                    camera: SKCameraNode = SKCameraNode(),
                    hasPhysicsContact: Bool = true,
                    gravity: CGVector = .zero,
                    isIgnoringSiblingOrder: Bool = false) {
            self.name = name
            self.size = size
            self.backgroundColor = backgroundColor
            self.camera = camera
            self.hasPhysicsContact = hasPhysicsContact
            self.gravity = gravity
            self.isIgnoringSiblingOrder = isIgnoringSiblingOrder
        }
        
        public var name: String?
        public var size: CGSize
        public var backgroundColor: UIColor
        public var camera: SKCameraNode
        public var hasPhysicsContact: Bool
        public var gravity: CGVector
        public var isIgnoringSiblingOrder: Bool
    }
    
    /// Setup the scene.
    func setup(configuration: SceneConfiguration = SceneConfiguration()) {
        name = configuration.name
        size = configuration.size
        view?.ignoresSiblingOrder = configuration.isIgnoringSiblingOrder
        backgroundColor = configuration.backgroundColor
        physicsWorld.gravity = configuration.gravity
        configuration.camera.position = .center
        addChildSafely(configuration.camera)
        camera = configuration.camera
        if configuration.hasPhysicsContact {
            self.physicsWorld.contactDelegate = self
        }
    }
    
    func update(_ update: (() -> Void)?) {
        update?()
    }
}
