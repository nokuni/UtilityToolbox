//
//  CaseIterableTests.swift
//  
//
//  Created by Yann Christophe MAERTENS on 12/06/2023.
//

import XCTest
@testable import Utility_Toolbox

final class CaseIterableTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: - Protocol Case Iterable

    func testNextCase() {
        enum Order: CaseIterable {
            case first
            case second
            case third
        }
        // Given
        let order: Order = .first
        // When
        let nextOrder = order.next()
        // Then
        let expectedResult: Order = .second
        XCTAssertEqual(nextOrder, expectedResult)
    }

    func testPreviousCase() {
        enum Order: CaseIterable {
            case first
            case second
            case third
        }
        // Given
        let order: Order = .third
        // When
        let previousOrder = order.previous()
        // Then
        let expectedResult: Order = .second
        XCTAssertEqual(previousOrder, expectedResult)
    }

}
