//
//  SKTexture.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import SpriteKit

public extension SKTexture {
    
    /// Create a gradient texture.
    convenience init(gradient: ImageGradient) {
        let cgColors = gradient.colors.map { $0.cgColor }
        let image: UIImage = ImageGradient.image(withBounds: gradient.rect, points: gradient.points, colors: cgColors)
        self.init(image: image)
    }
    
    /// The name of the texture.
    var name: String? {
        let comps = description.components(separatedBy: "'")
        return comps.count > 1 ? comps[1] : nil
    }

    /// Returns a filtered texture.
    static func filtered(_ image: String, by filter: SKTextureFilteringMode) -> SKTexture {
        let texture = SKTexture(imageNamed: image)
        texture.filteringMode = filter
        texture.preload { }
        return texture
    }
}
