//
//  MutableCollection.swift
//  
//
//  Created by Yann Christophe Maertens on 06/07/2023.
//

import Foundation

extension MutableCollection {
    subscript<Value>(map keyPath: WritableKeyPath<Element, Value>) -> [Value] {
        get { self[map: keyPath as KeyPath<Element, Value>] }
        set {
            for (i, value) in zip(indices, newValue) {
                self[i][keyPath: keyPath] = value
            }
        }
    }
}
