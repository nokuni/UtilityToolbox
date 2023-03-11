//
//  SFSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 11/03/23.
//

import Foundation

public struct SFSymbol {
    
    public init() { }
    
    public static var allNames: [String] {
        let names = [gamingNames].joined().map { $0 }
        return names
    }
    
    public static var gaming: [SFGamingSymbol] {
        SFGamingSymbol.allCases
    }
    
    public static var gamingNames: [String] {
        SFSymbol.gaming.map { $0.rawValue }
    }
}
