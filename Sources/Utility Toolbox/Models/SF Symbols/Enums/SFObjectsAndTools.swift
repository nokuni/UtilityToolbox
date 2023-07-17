//
//  SFObjectsAndTools.swift
//  
//
//  Created by Yann Christophe Maertens on 17/07/2023.
//

import Foundation

public enum SFObjectsAndTools: String, CaseIterable, SFSymbolProtocol {
    /// 􀊫
    case magnifyingGlass = "magnifyingglass"
    
    public var symbol: String {
        switch self {
        case .magnifyingGlass: return "􀊫"
        }
    }
}
