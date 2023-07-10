//
//  ArrayExtensionTests.swift
//  
//
//  Created by Yann Christophe MAERTENS on 10/07/2023.
//

import XCTest

final class ArrayExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_defaultValue_success() {
        // Given
        let values: [Int] = [100]
        let expectedResult = 100
        // When
        let result = values[0, default: expectedResult]
        // Then
        XCTAssertEqual(result, expectedResult)
    }

    func test_defaultValue_failure() {
        // Given
        let values: [Int] = []
        let expectedResult = 100
        // When
        let result = values[0, default: expectedResult]
        // Then
        XCTAssertEqual(result, expectedResult)
    }

    func test_isIndexInBounds_success() {
        // Given
        let values: [Int] = [100]
        // When
        // Then
        XCTAssertTrue(values.isIndexInBounds(0))
    }

    func test_isIndexInBounds_failure() {
        // Given
        let values: [Int] = [100]
        // When
        // Then
        XCTAssertFalse(values.isIndexInBounds(1))
    }

    func test_canGoNext_success() {
        // Given
        let values: [Int] = [100, 100]
        // When
        // Then
        XCTAssertTrue(values.canGoNext(from: 0))
    }

    func test_canGoPrevious_success() {
        // Given
        let values: [Int] = [100, 100]
        // When
        // Then
        XCTAssertTrue(values.canGoPrevious(from: 1))
    }

    func test_safeValue_success() {
        let values: [Int] = []
        let result = values[safe: 0]

        XCTAssertNil(result)
    }

    func test_splitted_success() {
        let values: [Int] = [0, 1, 2, 3, 4, 5]
        let splittedValues = values.splitted(into: 2)
        let expectedResult = [[0, 1], [2, 3], [4, 5]]

        XCTAssertEqual(splittedValues, expectedResult)
    }

    func test_split_success() {
        let values: [Int] = [0, 1, 2, 3, 4, 5]
        let splittedValues = values.split()
        let expectedFirstResult = [0, 1, 2]
        let expectedLastResult = [3, 4, 5]

        XCTAssertEqual(splittedValues.firstPart, expectedFirstResult)
        XCTAssertEqual(splittedValues.lastPart, expectedLastResult)
    }

    func test_swap_success() {
        var values: [Int] = [0, 11, 2, 3, 44, 5]
        values.swap(between: 1, and: 4)
        let expectedResult = [0, 44, 2, 3, 11, 5]

        XCTAssertEqual(values, expectedResult)
    }

    func test_swap_failures() {
        var values: [Int] = []
        let expectedResult = [0, 44, 2, 3, 11, 5]
        values.swap(between: 1, and: 4)
        XCTAssertNotEqual(values, expectedResult)

        values = [0, 11, 2, 3, 44, 5]

        values.swap(between: -1, and: 4)
        XCTAssertNotEqual(values, expectedResult)

        values.swap(between: 1, and: -1)
        XCTAssertNotEqual(values, expectedResult)

        values.swap(between: 7, and: 4)
        XCTAssertNotEqual(values, expectedResult)
        
        values.swap(between: 4, and: 7)
        XCTAssertNotEqual(values, expectedResult)
    }

    func test_removeRandomElement_success() {
        var values: [Int] = [0, 1, 2, 3, 4, 5]

        values.removeRandomElement()

        let assert = values.count == 6
        XCTAssertFalse(assert)
    }

    func test_removeRandomElement_failure() {
        // Given
        var values: [Int] = []
        // When
        values.removeRandomElement()
        // Then
        XCTAssertTrue(values.isEmpty)
    }

    func test_prepend_success() {
        var values: [Int] = [0, 1, 2, 3, 4, 5]
        values.prepend(100)

        let expectedResult = [100, 0, 1, 2, 3, 4, 5]

        XCTAssertEqual(values, expectedResult)
    }

    func test_replaceAllNil_success() {
        var values = [75, nil, 40, 90, nil, 10]
        values.replaceAllNil(by: 100)
        let expectedResult = [75, 100, 40, 90, 100, 10]

        XCTAssertEqual(values, expectedResult)
    }

    func test_removeLast_success() {
        // Given
        var fruits = ["Apple", "Kiwi", "Orange", "Cherry", "Banana", "Mango"]
        // When
        fruits.removeLast(until: 2)
        // Then
        let expectedResult = ["Apple", "Kiwi"]
        XCTAssertEqual(fruits, expectedResult)
    }

    func test_removeLast_failure() {
        // Given
        var fruits: [String] = []
        // When
        fruits.removeLast(until: 2)
        // Then
        let expectedResult = ["Apple", "Kiwi"]
        XCTAssertNotEqual(fruits, expectedResult)
    }

    func test_maxIndex_success() {
        // Given
        let values: [Int] = [0, 1, 2, 100, 4, 5]
        let expectedResult: Int? = 3
        // When
        let maxIndex = values.maxIndex()
        // Then
        XCTAssertEqual(maxIndex, expectedResult)
    }

    func test_maxIndex_failure() {
        // Given
        let values: [Int] = []
        // When
        let maxIndex = values.maxIndex()
        // Then
        XCTAssertEqual(maxIndex, nil)
    }

    func test_count_success() {
        // Given
        let fruits = ["Apple", "Kiwi", "Apple", "Cherry", "Apple", "Mango"]
        let expectedResult = 3
        // When
        let count = fruits.count(of: "Apple")
        // Then
        XCTAssertEqual(count, expectedResult)
    }

    func test_splitFromElement_success() {
        // Given
//        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
//        let expectedResult: (firstPart: [String], secondPart: [String]) = (["Cherry", "Kiwi"], ["Banana", "Mango"])
//        // When
//        let result = fruits.split(from: "Apple")
//        // Then
//        XCTAssertEqual(result, expectedResult)
    }

    func test_removeElement_success() {
        var names: [String] = ["Ash", "Brock", "Misty"]
        names.remove("Brock")

        let expectedResult = ["Ash", "Misty"]

        XCTAssertEqual(names, expectedResult)
    }

    func test_removeAtLeast_success() {
        let names: [String] = ["Ash", "Brock", "Misty"]
        let result = names.containsAtLeast(["Misty", "Misty", "Brock"])
        print(result)
        XCTAssertFalse(result)
    }

    func test_containsElements_success() {
        let names: [String] = ["Ash", "Brock", "Misty"]
        let result = names.contains(["Ash", "Pikachu"])

        XCTAssertFalse(result)
    }

    func test_additionSum_success() {
        let values = [5, 25, 45, 35, 95]
        let sum = values.additionSum
        let expectedResult = 205

        XCTAssertEqual(sum, expectedResult)
    }

    func test_substractionSum_success() {
        let values = [5, 25, 45, 35, 95]
        let sum = values.substractionSum
        let expectedResult = -205

        XCTAssertEqual(sum, expectedResult)
    }

    func test_multiplicationSum_success() {
        let values = [5, 25, 45, 35, 95]
        let sum = values.multiplicationSum
        let expectedResult = 18703125

        XCTAssertEqual(sum, expectedResult)
    }

    func test_intValue_success() {
        let values = [145, 657]
        let numericValue = values.intValue
        let expectedResult = 145657

        XCTAssertEqual(numericValue, expectedResult)
    }

    func test_removeDuplicates_success() {
        // Given
        var fruits = ["Apple", "Kiwi", "Orange", "Orange", "Cherry", "Banana", "Cherry", "Kiwi"]
        // When
        fruits.removeDuplicates()
        // Then
        let expectedResult = ["Apple", "Kiwi", "Orange", "Cherry", "Banana"]
        XCTAssertEqual(fruits, expectedResult)
    }
}
