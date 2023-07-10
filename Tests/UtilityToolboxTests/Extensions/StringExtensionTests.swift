//
//  StringExtensionTests.swift
//  
//
//  Created by Yann Christophe Maertens on 11/07/2023.
//

import XCTest
import SwiftUI

final class StringExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_wordCount_success() throws {
        // Given
        let sentence = "It was a beautiful day"
        let expectedResult: Int = 5
        // When
        let wordCount = sentence.wordCount
        // Then
        XCTAssertEqual(wordCount, expectedResult)
    }
    
    func test_removeLastUntil_success() throws {
        // Given
        var sentence = "I saw John and Cyndy yesterday"
        let expectedResult: String = "I saw John and Cyndy"
        // When
        sentence.removeLast(until: 20)
        // Then
        XCTAssertEqual(sentence, expectedResult)
    }
    
    #warning("FIX: make crash")
//    func test_removeLastUntil_failure() throws {
//        // Given
//        var sentence = ""
//        let expectedResult: String = "I saw John and Cyndy"
//        // When
//        sentence.removeLast(until: 5)
//        // Then
//        XCTAssertNotEqual(sentence, expectedResult)
//    }
    
    func test_height_success() throws {
        // Given
        let sentence = "Patrick is really motivated"
        let expectedResult: CGFloat = 24
        // When
        let height = sentence.height(withConstrainedWidth: 100, font: UIFont.systemFont(ofSize: 10))
        // Then
        XCTAssertEqual(height, expectedResult)
    }
    
    func test_width_success() throws {
        // Given
        let sentence = "Patrick is really motivated"
        let expectedResult: CGFloat = 125
        // When
        let width = sentence.width(withConstrainedHeight: 200, font: UIFont.systemFont(ofSize: 10))
        // Then
        XCTAssertEqual(width, expectedResult)
    }
    
    func test_localizedKey_success() throws {
        // Given
        let sentence: String = "Patrick is really motivated"
        let expectedResult: LocalizedStringKey = "Patrick is really motivated"
        // When
        let localizedStringKey = sentence.localizedKey
        // Then
        XCTAssertEqual(localizedStringKey, expectedResult)
    }
    
    func test_localized_success() throws {
        // Given
        let sentence: String = "Patrick is really motivated"
        let expectedResult: String = "Patrick is really motivated"
        // When
        let localizedString = sentence.localized()
        // Then
        XCTAssertEqual(localizedString, expectedResult)
    }
    
    func test_extractedNumber_success() throws {
        // Given
        let stringNumber: String = "1087"
        let expectedResult: Int? = 1087
        // When
        let result = stringNumber.extractedNumber
        // Then
        XCTAssertEqual(result, expectedResult)
    }
    
    func test_withoutDigits_success() throws {
        // Given
        let stringNumber: String = "I have 99 problems"
        let expectedResult: String? = "I have problems"
        // When
        let result = stringNumber.withoutDigits
        // Then
        XCTAssertEqual(result, expectedResult)
    }
}
