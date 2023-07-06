//
//  Collection.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import Foundation

public extension Collection where Indices.Iterator.Element == Index {
    /// Returns nil if the index is out of bounds.
    subscript(safe index: Index) -> Iterator.Element? {
        return (startIndex <= index && index < endIndex) ? self[index] : nil
    }
    
    subscript<Value>(map keyPath: KeyPath<Element, Value>) -> [Value] {
        get { map { $0[keyPath: keyPath] } }
    }
    
    subscript<Value>(map keyPath: ReferenceWritableKeyPath<Element, Value>) -> [Value] {
        get { self[map: keyPath as KeyPath<Element, Value>] }
        nonmutating set {
            for (i, value) in zip(indices, newValue) {
                self[i][keyPath: keyPath] = value
            }
        }
    }
}
