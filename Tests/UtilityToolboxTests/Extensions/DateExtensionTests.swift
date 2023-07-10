//
//  DateExtensionTests.swift
//  
//
//  Created by Yann Christophe MAERTENS on 10/07/2023.
//

import XCTest

final class DateExtensionTests: XCTestCase {

    var dateComponents: DateComponents!

    override func setUpWithError() throws {
        dateComponents = DateComponents()
    }

    override func tearDownWithError() throws {
        dateComponents = nil
    }

    func test_ddmmyyyy_success() throws {
        // Given
        dateComponents.day = 1
        dateComponents.month = 1
        dateComponents.year = 2000
        let date = Calendar(identifier: .gregorian).date(from: dateComponents)
        var formattedDate: String? = nil
        let expectedResult = "01/01/2000"
        // When
        formattedDate = date?.ddmmyyyy
        // Then
        XCTAssertEqual(formattedDate, expectedResult)
    }

    func test_components_success() throws {
        // Given
        let currentDate = Date.now
        // When
        dateComponents.month = currentDate.components.month
        var date = Calendar(identifier: .gregorian).date(from: dateComponents) ?? Date()
        // Then
        XCTAssertEqual(dateComponents.month, currentDate.components.month)
    }

    func test_isToday_success() throws {
        // Given
        let currentDate = Date.now
        // When
        dateComponents.day = currentDate.components.day
        dateComponents.month = currentDate.components.month
        dateComponents.year = currentDate.components.year
        let date = Calendar(identifier: .gregorian).date(from: dateComponents) ?? Date()
        // Then
        XCTAssertTrue(date.isToday)
    }

    func test_isYesterday_success() throws {
        // Given
        let currentDate = Date.now
        // When
        dateComponents.day = currentDate.components.day
        dateComponents.month = currentDate.components.month
        dateComponents.year = currentDate.components.year
        var date = Calendar(identifier: .gregorian).date(from: dateComponents) ?? Date()
        date.add(component: .day, value: -1)
        // Then
        XCTAssertTrue(date.isYesterday)
    }
    
    func test_isTomorrow_success() throws {
        // Given
        let currentDate = Date.now
        // When
        dateComponents.day = currentDate.components.day
        dateComponents.month = currentDate.components.month
        dateComponents.year = currentDate.components.year
        var date = Calendar(identifier: .gregorian).date(from: dateComponents) ?? Date()
        date.add(component: .day, value: 1)
        // Then
        XCTAssertTrue(date.isTomorrow)
    }
}
