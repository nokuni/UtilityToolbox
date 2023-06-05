//
//  String.swift
//  
//
//  Created by Maertens Yann-Christophe on 22/02/23.
//

import Foundation
import SwiftUI

// MARK: - Core

public extension String {
    
    private var expression: NSExpression {
        return NSExpression(format: self)
    }
    
    static var alphabet: String { "abcdefghijklmnopqrstuvwxyz" }
    
    /// Returns a decoded HTML string.
    func withoutHTMLEncoding() throws -> String? {
        guard let data = self.data(using: .utf8) else { return nil }
        let attr = try NSAttributedString(
            data: data,
            options: [
                .documentType: NSAttributedString.DocumentType.html,
                .characterEncoding: NSNumber(value: String.Encoding.utf8.rawValue)
            ],
            documentAttributes: nil
        )
        return attr.string
    }

    /// Returns the total number of words
    var wordCount: Int {
        let regex = try? NSRegularExpression(pattern: "\\w+")
        return regex?.numberOfMatches(in: self, range: NSRange(location: 0, length: self.utf16.count)) ?? 0
    }

    /// Returns the height of string.
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [.font: font], context: nil)

        return ceil(boundingBox.height)
    }

    /// Returns the width of string.
    func width(withConstrainedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [.font: font], context: nil)

        return ceil(boundingBox.width)
    }
}

// MARK: - Conversions

extension String {

    /// Returns the localized key version
    var localizedKey: LocalizedStringKey {
        LocalizedStringKey(self)
    }

    /// Returns the localized string version
    func localized(comment: String = "") -> String {
        NSLocalizedString(self, comment: comment)
    }

    /// Returns the numbers in the string (do not include negatives or decimals)
    var extractedNumber: Int? {
        Int(components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
    }

    /// Used to convert strings of hex code. ex: "0x00FF00" into 0x00FF00
    var uInt: UInt {
        return UInt(self.dropFirst(2), radix: 16) ?? 0
    }

    /// Returns an UInt32 from the string.
    func intoUInt32(from dictionary: [Int: UInt32]) -> UInt32? {
        let number = expression.expressionValue(with: dictionary, context: nil) as? UInt32
        return number
    }
}

// MARK: - Checks

public extension String {

    /// Returns true if string is not empty:
    var isNotEmpty: Bool { !self.isEmpty }

    /// Returns true if contains only digits
    var containsOnlyDigits: Bool {
        let notDigits = NSCharacterSet.decimalDigits.inverted
        return rangeOfCharacter(from: notDigits, options: String.CompareOptions.literal, range: nil) == nil
    }

    /// Returns true if contains only letters
    var containsOnlyLetters: Bool {
        let notLetters = NSCharacterSet.letters.inverted
        return rangeOfCharacter(from: notLetters, options: String.CompareOptions.literal, range: nil) == nil
    }

    /// Returns true if contains only letters or digits.
    var isAlphanumeric: Bool {
        let notAlphanumeric = NSCharacterSet.decimalDigits.union(NSCharacterSet.letters).inverted
        return rangeOfCharacter(from: notAlphanumeric, options: String.CompareOptions.literal, range: nil) == nil
    }

    var isAssetsImage: Bool {
        let uiImage = UIImage(named: self)
        return uiImage != nil
    }
}

// MARK: - LocalizedError

extension String: LocalizedError {
    public var errorDescription: String? { return self }
}

// MARK: - Subscripts

public extension String {
    
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
    
    subscript (bounds: CountableRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        if end < start { return "" }
        return self[start..<end]
    }
    
    subscript (bounds: CountableClosedRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        if end < start { return "" }
        return self[start...end]
    }
    
    subscript (bounds: CountablePartialRangeFrom<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(endIndex, offsetBy: -1)
        if end < start { return "" }
        return self[start...end]
    }
    
    subscript (bounds: PartialRangeThrough<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        if end < startIndex { return "" }
        return self[startIndex...end]
    }
    
    subscript (bounds: PartialRangeUpTo<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        if end < startIndex { return "" }
        return self[startIndex..<end]
    }
}
