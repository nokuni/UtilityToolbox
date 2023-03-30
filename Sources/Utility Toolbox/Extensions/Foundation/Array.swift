//
//  Array.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import Foundation
import Algorithms

// MARK: - Core

public extension Array {
    
    /// Returns a default value if the index is out of bounds.
    subscript(index: Int, default defaultValue: @autoclosure () -> Element) -> Element {
        guard index >= 0, index < endIndex else { return defaultValue() }
        return self[index]
    }
    
    /// Returns a splitted array with parts of the same size.
    func splitted(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
    
    func split() -> (firstPart: [Element], lastPart: [Element]) {
        let half = count / 2
        let firstSplit = self[0 ..< half]
        let lastSplit = self[half ..< count]
        return (firstPart: Array(firstSplit), lastPart: Array(lastSplit))
    }
    
    /// Using their indices, swap two elements in the array.
    mutating func swap(between valueA: Int, and valueB: Int) {
        guard !isEmpty else { return }
        guard valueA >= 0 else { return }
        guard valueB >= 0 else { return }
        guard valueA < count else { return }
        guard valueB < count else { return }
        self.swapAt(valueA, valueB)
    }
    
    /// Remove a random element from the array.
    mutating func removeRandomElement() {
        guard !isEmpty else { return }
        let indices = indices
        let randomIndex = indices.randomElement()!
        self.remove(at: randomIndex)
    }
    
    /// Adds a new element at the start of the array.
    mutating func prepend(_ element: Element) {
        self.insert(element, at: 0)
    }
    
    /// Returns the nil values replaced by a value.
    mutating func replaceAllNil<T>(by element: T) where Element == Optional<T> {
        for index in self.indices where self[index] == nil {
            self[index] = element
        }
    }
}

// MARK: - Comparable

public extension Array where Element: Comparable {
    
    /// Returns the index of the maximum value.
    func maxIndex() -> Int? {
        guard let highest = self.max() else { return nil }
        guard let index = firstIndex(where: { $0 == highest }) else { return nil }
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
    
    /// Returns true if contains the requirement, false otherwise.
    func containsAtLeast(_ requirement: [Element]) -> Bool {
        var array = self
        var count = 0
        for element in requirement where array.contains(where: { $0 == element }) {
            count += 1
            array.remove(element)
        }
        return count == requirement.count
    }
    
    func contains(_ elements: [Element]) -> Bool {
        let result = elements.map { contains($0) }
        return result.allSatisfy { $0 }
    }
}

// MARK: - Int

public extension Array where Element: Numeric {
    
    var additionSum: Element {
        self.reduce(0, +)
    }
    
    var substractionSum: Element {
        self.reduce(0, -)
    }
    
    var multiplicationSum: Element {
        self.reduce(1, *)
    }
    
    var intValue: Int? {
        let string = self.map { "\($0)" }.joined()
        return Int(string)
    }
}

// MARK: - RawRepresentable

public extension Array where Element: RawRepresentable {
    
    /// Returns a UInt32 value from a enum array of UInt32 raw values.
    func withXOROperators() -> UInt32? {
        guard !isEmpty else { return nil }
        let stringArray = compactMap { "\($0.rawValue)" }
        let string = stringArray.joined(separator: " | ")
        let dictionary = intoDictionary()
        return string.intoUInt32(from: dictionary)
    }
    
    /// Returns a dictionary containing UInt32 values from enum values.
    private func intoDictionary() -> [Int: UInt32] {
        var dictionary: [Int: UInt32] = [:]
        for (index, element) in enumerated() {
            if let number = element.rawValue as? UInt32 {
                dictionary[index] = number
            }
        }
        return dictionary
    }
}

// MARK: - Hashable

public extension Array where Element: Hashable {
    func elementFrequencies() -> [Element : Int] {
        let mappedItems = map { ($0, 1) }
        let counts = Dictionary(mappedItems, uniquingKeysWith: +)
        return counts
    }
}
