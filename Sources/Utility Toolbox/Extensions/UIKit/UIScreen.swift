//
//  UIScreen.swift
//
//
//  Created by Yann Christophe Maertens on 22/12/2023.
//

import UIKit

public extension UIScreen {
    static var width: CGFloat {
        let screen = self.init()
        return screen.bounds.width
    }
    
    static var height: CGFloat {
        let screen = self.init()
        return screen.bounds.width
    }
    
    static var minX: CGFloat {
        let screen = self.init()
        return screen.bounds.minX
    }
    
    static var midX: CGFloat {
        let screen = self.init()
        return screen.bounds.midX
    }
    
    static var maxX: CGFloat {
        let screen = self.init()
        return screen.bounds.maxX
    }
    
    static var minY: CGFloat {
        let screen = self.init()
        return screen.bounds.minY
    }
    
    static var midY: CGFloat {
        let screen = self.init()
        return screen.bounds.midY
    }
    
    static var maxY: CGFloat {
        let screen = self.init()
        return screen.bounds.maxY
    }
}
