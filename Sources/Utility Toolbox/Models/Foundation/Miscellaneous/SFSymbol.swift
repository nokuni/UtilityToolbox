//
//  SFSymbol.swift
//  
//
//  Created by Maertens Yann-Christophe on 11/03/23.
//

import Foundation

struct SFSymbol {
    
    static var allNames: [String] {
        let names = [gamingNames].joined().map { $0 }
        return names
    }
    
    static var gaming: [SFGamingSymbol] {
        SFGamingSymbol.allCases
    }
    
    static var gamingNames: [String] {
        SFSymbol.gaming.map { $0.rawValue }
    }
}
