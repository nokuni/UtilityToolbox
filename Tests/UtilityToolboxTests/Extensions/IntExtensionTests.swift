//
//  IntExtensionTests.swift
//  
//
//  Created by Yann Christophe Maertens on 11/07/2023.
//

import XCTest

final class IntExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    /// Convert and returns as a Double
    func test_double_success() throws {
        // Given
        let value: Int = 23
        let expectedResult: Double = 23
        // When
        let result = value.double
        // Then
        XCTAssertEqual(result, expectedResult)
    }
    
    func test_leadingZeros_success() throws {
        // Given
        let value: Int = 145
        let expectedResult: String = "00145"
        // When
        let result = value.leadingZeros(amount: 2)
        // Then
        XCTAssertEqual(result, expectedResult)
    }
    
    func test_isEven_success() throws {
        // Given
        // When
        let value: Int = 8
        // Then
        XCTAssertTrue(value.isEven)
    }
    
    func test_isOdd_success() throws {
        // Given
        // When
        let value: Int = 9
        // Then
        XCTAssertTrue(value.isOdd)
    }
    
    func test_percentageValue_success() throws {
        // Given
        let value: Int = 233
        let expectedResult: Int = 181
        // When
        let result = value.percentageValue(percentage: 78)
        // Then
        XCTAssertEqual(result, expectedResult)
    }
}
