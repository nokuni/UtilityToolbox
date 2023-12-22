//
//  UIScreen.swift
//
//
//  Created by Yann Christophe Maertens on 22/12/2023.
//

import UIKit
import SwiftUI

public extension UIScreen {
    static var width: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    static var height: CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    static var minX: CGFloat {
        return UIScreen.main.bounds.minX
    }
    
    static var midX: CGFloat {
        return UIScreen.main.bounds.midX
    }
    
    static var maxX: CGFloat {
        return UIScreen.main.bounds.maxX
    }
    
    static var minY: CGFloat {
        return UIScreen.main.bounds.minY
    }
    
    static var midY: CGFloat {
        return UIScreen.main.bounds.midY
    }
    
    static var maxY: CGFloat {
        return UIScreen.main.bounds.maxY
    }
}
