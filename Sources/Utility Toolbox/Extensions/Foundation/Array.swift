//
//  Array.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import Foundation
import Algorithms

public extension Array {
    
    /// Returns a splitted array with parts of the same size.
    func splitted(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

// MARK: - Comparable

public extension Array where Element: Comparable {
    
    /// Returns the index of the maximum value.
    func maxIndex() -> Int? {
        guard let highest = self.max() else { return nil }
        guard let index = self.firstIndex(where: { $0 == highest }) else { return nil }
        return index
    }
}

// MARK: - Equatable

public extension Array where Element: Equatable {
    
    /// Remove an element from the collection.
    mutating func remove(_ element: Element) {
        guard let index = firstIndex(of: element) else { return }
        remove(at: index)
    }
}

// MARK: - RawRepresentable

public extension Array where Element: RawRepresentable {

    /// Returns a UInt32 value from enum values.
    func withXOROperators() -> UInt32? {
        guard !self.isEmpty else { return nil }
        let stringArray = self.compactMap { "\($0.rawValue)" }
        let string = stringArray.joined(separator: " | ")
        let dictionary = self.intoDictionary()
        return string.intoUInt32(from: dictionary)
    }

    /// Returns a dictionary containing UInt32 values from enum values.
    func intoDictionary() -> [Int: UInt32] {
        var dictionary: [Int: UInt32] = [:]
        for (index, element) in self.enumerated() {
            if let number = element.rawValue as? UInt32 {
                dictionary[index] = number
            }
        }
        return dictionary
    }
}
