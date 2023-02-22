//
//  SKTexture.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import SpriteKit

public extension SKTexture {
    
    /// Create a gradient texture.
    convenience init(gradient: SKNode.Gradient) {
        let cgColors = gradient.colors.map { $0.cgColor }
        let image: UIImage = UIImage.Gradient.image(withBounds: gradient.rect, points: gradient.points, colors: cgColors)
        self.init(image: image)
    }
    
    /// The name of the texture.
    var name: String? {
        let comps = description.components(separatedBy: "'")
        return comps.count > 1 ? comps[1] : nil
    }
}
