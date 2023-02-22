//
//  UIDevice.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import UIKit

extension UIDevice {
    static var isOnPad: Bool { UIDevice.current.userInterfaceIdiom == .pad }
    static var isOnPhone: Bool { UIDevice.current.userInterfaceIdiom == .phone }
}
