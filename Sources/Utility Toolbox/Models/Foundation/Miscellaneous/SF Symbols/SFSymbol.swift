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

    public static var all: [[SFSymbolProtocol]] {
        [gaming, weather]
    }
    
    public static var allNames: [String] {
        let names = [gamingNames].joined().map { $0 }
        return names
    }

    // MARK: - Gaming
    public static var gaming: [SFGamingSymbol] {
        SFGamingSymbol.allCases
    }
    
    public static var gamingNames: [String] {
        SFSymbol.gaming.map { $0.rawValue }
    }

    public static var gamingSymbols: [String] {
        SFSymbol.gaming.map { $0.symbol }
    }

    // MARK: - Weather
    public static var weather: [SFWeatherSymbol] {
        SFWeatherSymbol.allCases
    }

    public static var weatherNames: [String] {
        SFSymbol.weather.map { $0.rawValue }
    }
}
