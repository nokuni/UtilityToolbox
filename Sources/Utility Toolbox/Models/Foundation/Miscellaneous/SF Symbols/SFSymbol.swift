//
//  SFSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 11/03/23.
//

import Foundation

public protocol SFSymbolProtocol {
    var rawValue: String { get }
}

public struct SFSymbol {
    public init() { }
}

// MARK: - All
extension SFSymbol {
    public static var all: [[SFSymbolProtocol]] {
        [gaming, weather, accessibility, time]
    }
    public static var allNames: [String] {
        [gamingNames, weatherNames, accessibilityNames, timeNames].joined().map { $0 }
    }
    public static var allSymbols: [String] {
        [gamingSymbols, weatherSymbols, accessibilitySymbols, timeSymbols].joined().map { $0 }
    }
}

// MARK: - Gaming
extension SFSymbol {
    public static var gaming: [SFGamingSymbol] {
        SFGamingSymbol.allCases
    }
    public static var gamingNames: [String] {
        SFSymbol.gaming.map { $0.rawValue }
    }
    public static var gamingSymbols: [String] {
        SFSymbol.gaming.map { $0.symbol }
    }
}

// MARK: - Weather
extension SFSymbol {
    public static var weather: [SFWeatherSymbol] {
        SFWeatherSymbol.allCases
    }
    public static var weatherNames: [String] {
        SFSymbol.weather.map { $0.rawValue }
    }
    public static var weatherSymbols: [String] {
        SFSymbol.weather.map { $0.symbol }
    }
}

// MARK: - Accessibility
extension SFSymbol {
    public static var accessibility: [SFAccessibilitySymbol] {
        SFAccessibilitySymbol.allCases
    }
    public static var accessibilityNames: [String] {
        SFSymbol.accessibility.map { $0.rawValue }
    }
    public static var accessibilitySymbols: [String] {
        SFSymbol.accessibility.map { $0.symbol }
    }
}

// MARK: - Time
extension SFSymbol {
    public static var time: [SFTimeSymbol] {
        SFTimeSymbol.allCases
    }
    public static var timeNames: [String] {
        SFSymbol.time.map { $0.rawValue }
    }
    public static var timeSymbols: [String] {
        SFSymbol.time.map { $0.symbol }
    }
}

// MARK: - Privacy & Security
extension SFSymbol {
    public static var privacyAndSecurity: [SFPrivacyAndSecuritySymbol] {
        SFPrivacyAndSecuritySymbol.allCases
    }
    public static var privacyAndSecurityNames: [String] {
        SFSymbol.privacyAndSecurity.map { $0.rawValue }
    }
    public static var privacyAndSecuritySymbols: [String] {
        SFSymbol.privacyAndSecurity.map { $0.symbol }
    }
}

// MARK: - Devices
extension SFSymbol {
    public static var devices: [SFDevicesSymbol] {
        SFDevicesSymbol.allCases
    }
    public static var devicesNames: [String] {
        SFSymbol.devices.map { $0.rawValue }
    }
    public static var devicesSymbols: [String] {
        SFSymbol.devices.map { $0.symbol }
    }
}

// MARK: - Shapes
extension SFSymbol {
    public static var shapes: [SFShapesSymbol] {
        SFShapesSymbol.allCases
    }
    public static var shapesNames: [String] {
        SFSymbol.shapes.map { $0.rawValue }
    }
    public static var shapesSymbols: [String] {
        SFSymbol.shapes.map { $0.symbol }
    }
}

// MARK: - Arrows
extension SFSymbol {
    public static var arrows: [SFArrowsSymbol] {
        SFArrowsSymbol.allCases
    }
    public static var arrowsNames: [String] {
        SFSymbol.arrows.map { $0.rawValue }
    }
    public static var arrowsSymbols: [String] {
        SFSymbol.arrows.map { $0.symbol }
    }
}

// MARK: - Maths
extension SFSymbol {
    public static var maths: [SFArrowsSymbol] {
        SFArrowsSymbol.allCases
    }
    public static var mathsNames: [String] {
        SFSymbol.maths.map { $0.rawValue }
    }
    public static var mathsSymbols: [String] {
        SFSymbol.maths.map { $0.symbol }
    }
}
