//
//  File.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import Foundation

extension Collection where Indices.Iterator.Element == Index {
    /// Returns nil if the index is out of bounds.
    public subscript(safe index: Index) -> Iterator.Element? {
        return (startIndex <= index && index < endIndex) ? self[index] : nil
    }
}
