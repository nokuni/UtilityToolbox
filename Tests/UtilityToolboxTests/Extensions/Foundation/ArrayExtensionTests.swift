//
//  ArrayExtensionTests.swift
//  
//
//  Created by Yann Christophe MAERTENS on 10/07/2023.
//

import XCTest
import SpriteKit
@testable import Utility_Toolbox

final class ArrayExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_defaultValue_success() throws {
        // Given
        let values: [Int] = [100]
        let expectedResult = 100
        // When
        let result = values[0, default: expectedResult]
        // Then
        XCTAssertEqual(result, expectedResult)
    }

    func test_defaultValue_failure() throws {
        // Given
        let values: [Int] = []
        let expectedResult = 100
        // When
        let result = values[0, default: expectedResult]
        // Then
        XCTAssertEqual(result, expectedResult)
    }

    func test_isIndexInBounds_success() throws {
        // Given
        let values: [Int] = [100]
        // When
        // Then
        XCTAssertTrue(values.isIndexInBounds(0))
    }

    func test_isIndexInBounds_failure() throws {
        // Given
        let values: [Int] = [100]
        // When
        // Then
        XCTAssertFalse(values.isIndexInBounds(1))
    }

    func test_canGoNext_success() throws {
        // Given
        let values: [Int] = [100, 100]
        // When
        // Then
        XCTAssertTrue(values.canGoNext(from: 0))
    }

    func test_canGoPrevious_success() throws {
        // Given
        let values: [Int] = [100, 100]
        // When
        // Then
        XCTAssertTrue(values.canGoPrevious(from: 1))
    }

    func test_safeValue_success() throws {
        let values: [Int] = []
        let result = values[safe: 0]

        XCTAssertNil(result)
    }

    func test_splitted_success() throws {
        let values: [Int] = [0, 1, 2, 3, 4, 5]
        let splittedValues = values.splitted(into: 2)
        let expectedResult = [[0, 1], [2, 3], [4, 5]]

        XCTAssertEqual(splittedValues, expectedResult)
    }

    func test_split_success() throws {
        let values: [Int] = [0, 1, 2, 3, 4, 5]
        let splittedValues = values.split()
        let expectedFirstResult = [0, 1, 2]
        let expectedLastResult = [3, 4, 5]

        XCTAssertEqual(splittedValues.firstPart, expectedFirstResult)
        XCTAssertEqual(splittedValues.lastPart, expectedLastResult)
    }

    func test_swap_success() throws {
        var values: [Int] = [0, 11, 2, 3, 44, 5]
        values.swap(between: 1, and: 4)
        let expectedResult = [0, 44, 2, 3, 11, 5]

        XCTAssertEqual(values, expectedResult)
    }

    func test_swap_failures() throws {
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

    func test_removeRandomElement_success() throws {
        var values: [Int] = [0, 1, 2, 3, 4, 5]

        values.removeRandomElement()

        let assert = values.count == 6
        XCTAssertFalse(assert)
    }

    func test_removeRandomElement_failure() throws {
        // Given
        var values: [Int] = []
        // When
        values.removeRandomElement()
        // Then
        XCTAssertTrue(values.isEmpty)
    }

    func test_prepend_success() throws {
        var values: [Int] = [0, 1, 2, 3, 4, 5]
        values.prepend(100)

        let expectedResult = [100, 0, 1, 2, 3, 4, 5]

        XCTAssertEqual(values, expectedResult)
    }

    func test_replaceAllNil_success() throws {
        var values = [75, nil, 40, 90, nil, 10]
        values.replaceAllNil(by: 100)
        let expectedResult = [75, 100, 40, 90, 100, 10]

        XCTAssertEqual(values, expectedResult)
    }

    func test_removeLast_success() throws {
        // Given
        var fruits = ["Apple", "Kiwi", "Orange", "Cherry", "Banana", "Mango"]
        // When
        fruits.removeLast(until: 2)
        // Then
        let expectedResult = ["Apple", "Kiwi"]
        XCTAssertEqual(fruits, expectedResult)
    }

    func test_removeLast_failure() throws {
        // Given
        var fruits: [String] = []
        // When
        fruits.removeLast(until: 2)
        // Then
        let expectedResult = ["Apple", "Kiwi"]
        XCTAssertNotEqual(fruits, expectedResult)
    }

    func test_maxIndex_success() throws {
        // Given
        let values: [Int] = [0, 1, 2, 100, 4, 5]
        let expectedResult: Int? = 3
        // When
        let maxIndex = values.maxIndex()
        // Then
        XCTAssertEqual(maxIndex, expectedResult)
    }

    func test_maxIndex_failure() throws {
        // Given
        let values: [Int] = []
        // When
        let maxIndex = values.maxIndex()
        // Then
        XCTAssertEqual(maxIndex, nil)
    }

    func test_count_success() throws {
        // Given
        let fruits = ["Apple", "Kiwi", "Apple", "Cherry", "Apple", "Mango"]
        let expectedResult = 3
        // When
        let count = fruits.count(of: "Apple")
        // Then
        XCTAssertEqual(count, expectedResult)
    }

    func test_splitFromElement_success() throws {
        // Given
        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
        let expectedResult: (firstPart: [String], secondPart: [String])? = (
            ["Cherry", "Kiwi"], ["Banana", "Mango"]
        )
        // When
        let result = fruits.split(from: "Apple")
        // Then
        XCTAssertEqual(result?.firstPart, expectedResult?.firstPart)
        XCTAssertEqual(result?.secondPart, expectedResult?.secondPart)
    }
    
    func test_splitFromElement_failure() throws {
        // Given
        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
        // When
        let result = fruits.split(from: "Strawberry")
        // Then
        XCTAssertNil(result)
    }

    func test_removeElement_success() throws {
        // Given
        var names: [String] = ["Ash", "Brock", "Misty"]
        let expectedResult = ["Ash", "Misty"]
        // When
        names.remove("Brock")
        // Then
        XCTAssertEqual(names, expectedResult)
    }
    
    func test_removeElement_failure() throws {
        // Given
        var names: [String] = ["Ash", "Brock", "Misty"]
        let expectedCount = 3
        // When
        names.remove("Pikachu")
        // Then
        XCTAssertEqual(names.count, expectedCount)
    }

    func test_removeAtLeast_success() throws {
        // Given
        let names: [String] = ["Ash", "Brock", "Misty"]
        // When
        let result = names.containsAtLeast(["Misty", "Misty", "Brock"])
        // Then
        XCTAssertFalse(result)
    }

    func test_containsElements_success() throws {
        // Given
        let names: [String] = ["Ash", "Brock", "Misty"]
        // When
        let result = names.contains(["Ash", "Pikachu"])
        // Then
        XCTAssertFalse(result)
    }
    
    func test_nextFromIndex_success() throws {
        // Given
        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
        let expectedResult = fruits[1]
        // When
        let fruit = fruits.nextFrom(index: 0)
        // Then
        XCTAssertEqual(fruit, expectedResult)
    }
    
    func test_nextFromIndex_failures() throws {
        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
        var fruit = fruits.nextFrom(index: 5)
        XCTAssertNil(fruit)
        fruit = fruits.nextFrom(index: 4)
        XCTAssertNil(fruit)
    }
    
    func test_nextFromElement_success() throws {
        // Given
        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
        let expectedResult = "Apple"
        // When
        let fruit = fruits.nextFrom(element: "Kiwi")
        // Then
        XCTAssertEqual(fruit, expectedResult)
    }
    
    func test_nextFromElement_failure() throws {
        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
        let fruit = fruits.nextFrom(element: "Papaya")
        XCTAssertNil(fruit)
    }
    
    func test_previousFromIndex_success() throws {
        // Given
        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
        let expectedResult = fruits[0]
        // When
        let fruit = fruits.previousFrom(index: 1)
        // Then
        XCTAssertEqual(fruit, expectedResult)
    }
    
    func test_previousFromIndex_failures() throws {
        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
        var fruit = fruits.previousFrom(index: -1)
        XCTAssertNil(fruit)
        fruit = fruits.previousFrom(index: 0)
        XCTAssertNil(fruit)
    }
    
    func test_previousFromElement_success() throws {
        // Given
        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
        let expectedResult = "Cherry"
        // When
        let fruit = fruits.previousFrom(element: "Kiwi")
        // Then
        XCTAssertEqual(fruit, expectedResult)
    }
    
    func test_previousFromElement_failure() throws {
        // Given
        let fruits = ["Cherry", "Kiwi", "Apple", "Banana", "Mango"]
        // When
        let fruit = fruits.previousFrom(element: "Strawberry")
        // Then
        XCTAssertNil(fruit)
    }
    
    func test_additionSum_success() throws {
        let values = [5, 25, 45, 35, 95]
        let sum = values.additionSum
        let expectedResult = 205

        XCTAssertEqual(sum, expectedResult)
    }

    func test_substractionSum_success() throws {
        let values = [5, 25, 45, 35, 95]
        let sum = values.substractionSum
        let expectedResult = -205

        XCTAssertEqual(sum, expectedResult)
    }

    func test_multiplicationSum_success() throws {
        let values = [5, 25, 45, 35, 95]
        let sum = values.multiplicationSum
        let expectedResult = 18703125

        XCTAssertEqual(sum, expectedResult)
    }

    func test_intValue_success() throws {
        let values = [145, 657]
        let numericValue = values.intValue
        let expectedResult = 145657

        XCTAssertEqual(numericValue, expectedResult)
    }
    
    func test_withXOROperators_success() throws {
        // Given
        struct CollisionCategory: OptionSet {
            init(rawValue: UInt32) {
                self.rawValue = rawValue
            }
            let rawValue: UInt32
            static let player = CollisionCategory(rawValue: 0x1 << 0)
            static let playerProjectile = CollisionCategory(rawValue: 0x1 << 1)
            static let enemy = CollisionCategory(rawValue: 0x1 << 2)
        }
        let collisions: [CollisionCategory] = [.player, .playerProjectile, .enemy]
        let expectedResult: UInt32? = 7
        // When
        let collisionBitMask = collisions.withXOROperators()
        // Then
        XCTAssertEqual(collisionBitMask, expectedResult)
    }
    
    func test_withXOROperators_failure() throws {
        // Given
        struct CollisionCategory: OptionSet {
            init(rawValue: UInt32) {
                self.rawValue = rawValue
            }
            let rawValue: UInt32
            static let player = CollisionCategory(rawValue: 0x1 << 0)
            static let playerProjectile = CollisionCategory(rawValue: 0x1 << 1)
            static let enemy = CollisionCategory(rawValue: 0x1 << 2)
        }
        let collisions: [CollisionCategory] = []
        // When
        let collisionBitMask = collisions.withXOROperators()
        // Then
        XCTAssertNil(collisionBitMask)
    }
    
    func test_elementFrequencies_success() throws {
        // Given
        let characters = ["Naruto", "Luffy", "Luffy", "Ichigo", "Luffy", "Ichigo"]
        let expectedResult = ["Naruto": 1, "Luffy": 3, "Ichigo": 2]
        // When
        let dictionary: [String: Int] = characters.elementFrequencies()
        // Then
        XCTAssertEqual(dictionary, expectedResult)
    }

    func test_removeDuplicates_success() throws {
        // Given
        var fruits = ["Apple", "Kiwi", "Orange", "Orange", "Cherry", "Banana", "Cherry", "Kiwi"]
        // When
        fruits.removeDuplicates()
        // Then
        let expectedResult = ["Apple", "Kiwi", "Orange", "Cherry", "Banana"]
        XCTAssertEqual(fruits, expectedResult)
    }
    
    func test_alphabet_success() throws {
        // Given
        let letters = ["a", "b", "c"]
        // When
        let alphabet = Array.alphabet(until: 3)
        // Then
        XCTAssertEqual(letters, alphabet)
    }
    
    func test_alphabetDictionary_success() throws {
        // Given
        let letters = [[0: "a"], [1: "b"], [2: "c"]]
        // When
        let alphabetDictionary = Array.alphabetDictionary(until: 3)
        // Then
        XCTAssertEqual(letters, alphabetDictionary)
    }
    
    func test_randomElementWithOdds_success() throws {
        // Given
        struct Student: Probability {
            let name: String
            var odds: Int
        }
        let students = [
            Student(name: "Lionel", odds: 0),
            Student(name: "Patrick", odds: 0),
            Student(name: "Denise", odds: 100),
            Student(name: "Charlotte", odds: 0),
        ]
        let expectedResult: Student? = students[2]
        // When
        let randomStudent = students.randomElementWithOdds()
        // Then
        XCTAssertEqual(randomStudent?.name, expectedResult?.name)
    }
    
    func test_randomElementWithOdds_failure() throws {
        // Given
        struct Student: Probability {
            let name: String
            var odds: Int
        }
        let students: [Student] = []
        // When
        let randomStudent = students.randomElementWithOdds()
        // Then
        XCTAssertNil(randomStudent)
    }
    
    func test_childNodes_success() throws {
        // Given
        let node = SKNode()
        let child = SKNode()
        child.name = "Child 1"
        node.addChild(child)
        // When
        let childNodes = node.children.childNodes(named: "Child 1")
        // Then
        XCTAssertEqual(childNodes.count, 1)
    }
    
    func test_childNodes_failure() throws {
        // Given
        let node = SKNode()
        let child = SKNode()
        child.name = nil
        node.addChild(child)
        // When
        let childNodes = node.children.childNodes(named: "Child 1")
        // Then
        XCTAssertEqual(childNodes.count, 0)
    }
    
    func test_isExistingChildNode_success() throws {
        // Given
        let node = SKNode()
        let child = SKNode()
        child.name = "Child 1"
        node.addChild(child)
        // When
        let isExistingChildNode = node.children.isExistingChildNode(named: "Child 1")
        // Then
        XCTAssertTrue(isExistingChildNode)
    }
}
