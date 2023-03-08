//
//  UInt32.swift
//  
//
//  Created by Maertens Yann-Christophe on 08/03/23.
//

import SpriteKit

public extension UInt32 {
    
    /// 0x00000000 (all bits cleared).
    static var allClear: UInt32 {
        return 0x00000000
    }
    
    /// 0xFFFFFFFF (all bits set).
    static var allSet: UInt32 {
        return 0xFFFFFFFF
    }
}
