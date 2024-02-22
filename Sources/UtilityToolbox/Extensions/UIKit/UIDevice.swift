//
//  UIDevice.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import UIKit

public extension UIDevice {
    
    /// Returns true if the current device is a pad and false otherwise.
    static var isOnPad: Bool { UIDevice.current.userInterfaceIdiom == .pad }

    /// Returns true if the current device is a phone and false otherwise.
    static var isOnPhone: Bool { UIDevice.current.userInterfaceIdiom == .phone }

    /// Returns true if the current device is a mac and false otherwise.
    static var isOnMac: Bool { UIDevice.current.userInterfaceIdiom == .mac }

    /// Returns true if the current device is a TV and false otherwise.
    static var isOnTV: Bool { UIDevice.current.userInterfaceIdiom == .tv }

    /// Returns true if the current device is a car and false otherwise.
    static var isOnCar: Bool { UIDevice.current.userInterfaceIdiom == .carPlay }
}
