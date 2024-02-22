//
//  SFSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 11/03/23.
//

import Foundation

public protocol SFSymbolProtocol {
    var rawValue: String { get }
    var symbol: String { get }
}

public enum SFSymbol {
    case sfGamingSymbol(SFGamingSymbol)
    case sfWeatherSymbol(SFWeatherSymbol)
    case sfAccessibilitySymbol(SFAccessibilitySymbol)
    case sfTimeSymbol(SFTimeSymbol)
    case sfPrivacyAndSecuritySymbol(SFPrivacyAndSecuritySymbol)
    case sfDevicesSymbol(SFDevicesSymbol)
    case sfShapesSymbol(SFShapesSymbol)
    case sfArrowsSymbol(SFArrowsSymbol)
    case sfMathsSymbol(SFMathsSymbol)
    case sfTransportSymbol(SFTransportSymbol)
    case sfTextFormattingSymbol(SFTextFormattingSymbol)
    case sfMediaSymbol(SFMediaSymbol)
    case sfHealthSymbol(SFHealthSymbol)
    case sfNatureSymbol(SFNatureSymbol)
    case sfVariableSymbol(SFVariableSymbol)
}

// MARK: - All
extension SFSymbol {
    public static var all: [[SFSymbolProtocol]] {
        [gaming, weather, accessibility, time, privacyAndSecurity, devices, shapes, arrows, maths, transport, textFormatting, media, health, nature, variable, home, objectAndTools]
    }
    public static var allSFSymbols: [SFSymbolProtocol] {
        SFSymbol.all.joined().map { $0 }
    }
    public static var allNames: [String] {
        SFSymbol.allSFSymbols.map { $0.rawValue }
    }
    public static var allSymbols: [String] {
        SFSymbol.allSFSymbols.map { $0.symbol }
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
    public static var maths: [SFMathsSymbol] {
        SFMathsSymbol.allCases
    }
    public static var mathsNames: [String] {
        SFSymbol.maths.map { $0.rawValue }
    }
    public static var mathsSymbols: [String] {
        SFSymbol.maths.map { $0.symbol }
    }
}

// MARK: - Transport
extension SFSymbol {
    public static var transport: [SFTransportSymbol] {
        SFTransportSymbol.allCases
    }
    public static var transportNames: [String] {
        SFSymbol.transport.map { $0.rawValue }
    }
    public static var transportSymbols: [String] {
        SFSymbol.transport.map { $0.symbol }
    }
}

// MARK: - Text Formatting
extension SFSymbol {
    public static var textFormatting: [SFTextFormattingSymbol] {
        SFTextFormattingSymbol.allCases
    }
    public static var textFormattingNames: [String] {
        SFSymbol.textFormatting.map { $0.rawValue }
    }
    public static var textFormattingSymbols: [String] {
        SFSymbol.textFormatting.map { $0.symbol }
    }
}

// MARK: - Media
extension SFSymbol {
    public static var media: [SFMediaSymbol] {
        SFMediaSymbol.allCases
    }
    public static var mediaNames: [String] {
        SFSymbol.media.map { $0.rawValue }
    }
    public static var mediaSymbols: [String] {
        SFSymbol.media.map { $0.symbol }
    }
}

// MARK: - Health
extension SFSymbol {
    public static var health: [SFHealthSymbol] {
        SFHealthSymbol.allCases
    }
    public static var healthNames: [String] {
        SFSymbol.health.map { $0.rawValue }
    }
    public static var healthSymbols: [String] {
        SFSymbol.health.map { $0.symbol }
    }
}

// MARK: - Nature
extension SFSymbol {
    public static var nature: [SFNatureSymbol] {
        SFNatureSymbol.allCases
    }
    public static var natureNames: [String] {
        SFSymbol.nature.map { $0.rawValue }
    }
    public static var natureSymbols: [String] {
        SFSymbol.nature.map { $0.symbol }
    }
}

// MARK: - Variable
extension SFSymbol {
    public static var variable: [SFVariableSymbol] {
        SFVariableSymbol.allCases
    }
    public static var variableNames: [String] {
        SFSymbol.variable.map { $0.rawValue }
    }
    public static var variableSymbols: [String] {
        SFSymbol.variable.map { $0.symbol }
    }
}

// MARK: - Home
extension SFSymbol {
    public static var home: [SFHomeSymbol] {
        SFHomeSymbol.allCases
    }
    public static var homeNames: [String] {
        SFSymbol.variable.map { $0.rawValue }
    }
    public static var homeSymbols: [String] {
        SFSymbol.variable.map { $0.symbol }
    }
}
// MARK: - Objects and tools
extension SFSymbol {
    public static var objectAndTools: [SFObjectsAndTools] {
        SFObjectsAndTools.allCases
    }
    public static var objectAndToolsNames: [String] {
        SFSymbol.variable.map { $0.rawValue }
    }
    public static var objectAndToolsSymbols: [String] {
        SFSymbol.variable.map { $0.symbol }
    }
}
