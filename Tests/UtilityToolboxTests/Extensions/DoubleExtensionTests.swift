//
//  DoubleExtensionTests.swift
//  
//
//  Created by Yann Christophe Maertens on 11/07/2023.
//

import XCTest

final class DoubleExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_int_success() throws {
        // Given
        let value: Double = 10.4
        let expectedResult: Int = 10
        // When
        let result = value.int
        // Then
        XCTAssertEqual(result, expectedResult)
    }
    
    func test_percentageValue_success() throws {
        // Given
        let value: Double = 54.12
        let expectedResult: Double = 20.5656
        // When
        let result = value.percentageValue(percentage: 38)
        // Then
        XCTAssertEqual(result, expectedResult)
    }
    
    func test_withoutTrailingZeros_success() throws {
        // Given
        let value: Double = 96.00
        let expectedResult: String = "96"
        // When
        let result = value.withoutTrailingZeros()
        // Then
        XCTAssertEqual(result, expectedResult)
    }
}
