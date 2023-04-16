//
//  CaseIterable.swift
//  
//
//  Created by Maertens Yann-Christophe on 26/02/23.
//

import Foundation

public extension CaseIterable where Self: Equatable, AllCases: BidirectionalCollection {
    
    func previous() -> Self {
        let all = Self.allCases
        let index = all.firstIndex(of: self)!
        let previous = all.index(before: index)
        return all[previous < all.startIndex ? all.index(before: all.endIndex) : previous]
    }

    func next() -> Self {
        let all = Self.allCases
        let index = all.firstIndex(of: self)!
        let next = all.index(after: index)
        return all[next == all.endIndex ? all.startIndex : next]
    }
}
