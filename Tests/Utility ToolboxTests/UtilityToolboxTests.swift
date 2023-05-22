import XCTest
import SpriteKit
@testable import Utility_Toolbox

final class UtilityToolboxTests: XCTestCase {
    
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(Utility_Toolbox().text, "Hello, World!")
    }
    
    // MARK: Arrays
    
    func testArrayDefaultValue() {
        let values: [Int] = []
        let expectedResult = 100
        let result = values[0, default: expectedResult]
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testArraySafeValue() {
        let values: [Int] = []
        let result = values[safe: 0]
        
        XCTAssertNil(result)
    }
    
    func testSplittedArray() {
        let values: [Int] = [0, 1, 2, 3, 4, 5]
        let splittedValues = values.splitted(into: 2)
        let expectedResult = [[0, 1], [2, 3], [4, 5]]
        
        XCTAssertEqual(splittedValues, expectedResult)
    }
    
    func testSplitArray() {
        let values: [Int] = [0, 1, 2, 3, 4, 5]
        let splittedValues = values.split()
        let expectedFirstResult = [0, 1, 2]
        let expectedLastResult = [3, 4, 5]
        
        XCTAssertEqual(splittedValues.firstPart, expectedFirstResult)
        XCTAssertEqual(splittedValues.lastPart, expectedLastResult)
    }
    
    func testArraySwapValue() {
        var values: [Int] = [0, 11, 2, 3, 44, 5]
        values.swap(between: 1, and: 4)
        let expectedResult = [0, 44, 2, 3, 11, 5]
        
        XCTAssertEqual(values, expectedResult)
    }
    
    func testArrayRemoveRandomElement() {
        var values: [Int] = [0, 1, 2, 3, 4, 5]
        
        values.removeRandomElement()
        
        let assert = values.count == 6
        XCTAssertFalse(assert)
    }
    
    func testArrayPrepend() {
        var values: [Int] = [0, 1, 2, 3, 4, 5]
        values.prepend(100)
        
        let expectedResult = [100, 0, 1, 2, 3, 4, 5]
        
        XCTAssertEqual(values, expectedResult)
    }
    
    func testArrayMaxIndex() {
        let values: [Int] = [0, 1, 2, 100, 4, 5]
        let maxIndex = values.maxIndex()
        
        let expectedResult: Int? = 3
        
        XCTAssertEqual(maxIndex, expectedResult)
    }
    
    func testArrayRemoveElement() {
        var names: [String] = ["Ash", "Brock", "Misty"]
        names.remove("Brock")
        
        let expectedResult = ["Ash", "Misty"]
        
        XCTAssertEqual(names, expectedResult)
    }
    
    func testArrayRemoveAtLeast() {
        let names: [String] = ["Ash", "Brock", "Misty"]
        let result = names.containsAtLeast(["Misty", "Misty", "Brock"])
        print(result)
        XCTAssertFalse(result)
    }
    
    func testArrayContainsElements() {
        let names: [String] = ["Ash", "Brock", "Misty"]
        let result = names.contains(["Ash", "Pikachu"])
        
        XCTAssertFalse(result)
    }
    
    func testAdditionSum() {
        let values = [5, 25, 45, 35, 95]
        let sum = values.additionSum
        let expectedResult = 205
        
        XCTAssertEqual(sum, expectedResult)
    }
    
    func testSubstractionSum() {
        let values = [5, 25, 45, 35, 95]
        let sum = values.substractionSum
        let expectedResult = -205
        
        XCTAssertEqual(sum, expectedResult)
    }
    
    func testMultiplicationSum() {
        let values = [5, 25, 45, 35, 95]
        let sum = values.multiplicationSum
        let expectedResult = 18703125
        
        XCTAssertEqual(sum, expectedResult)
    }
    
    func testIntValue() {
        let values = [145, 657]
        let numericValue = values.intValue
        let expectedResult = 145657
        
        XCTAssertEqual(numericValue, expectedResult)
    }
    
    func testReplaceAllNil() {
        var values = [75, nil, 40, 90, nil, 10]
        values.replaceAllNil(by: 100)
        let expectedResult = [75, 100, 40, 90, 100, 10]
        
        XCTAssertEqual(values, expectedResult)
    }

    // MARK: - String

    func testIsNotEmpty() {
        // Given
        let company = "Apple"
        // When
        let result = company.isNotEmpty
        // Then
        XCTAssertTrue(result)
    }

    func testExtractedNumber() {
        // Given
        let address = "10, street of testing 90100 City"
        // When
        let extractedNumber = address.extractedNumber
        // Then
        let expectedResult = 1090100
        XCTAssertEqual(extractedNumber, expectedResult)
    }

    func testUInt() {
        // Given
        let colorHexString = "0x00FF00"
        // When
        let colorHex = colorHexString.uInt
        // Then
        let expectedResult: UInt = 0x00FF00
        XCTAssertEqual(colorHex, expectedResult)
    }

    func testStringSubscript() {
        // Given
        let word = "Señorita"
        // When
        let letter: Character = word[2]
        // Then
        let expectedResult: Character = "ñ"
        XCTAssertEqual(letter, expectedResult)
    }

    // MARK: - Int

    func testLeadingZeros() {
        // Given
        let number: Int = 39831
        // When
        let leadingZeros: String = number.leadingZeros(amount: 2)
        // Then
        let expectedResult: String = "0039831"
        XCTAssertEqual(leadingZeros, expectedResult)
    }

    func testPercentageValue() {
        // Given
        let value: Int = 100
        // When
        let percentageValue: Int = value.percentageValue(percentage: 31)
        // Then
        let expectedResult: Int = 31
        XCTAssertEqual(percentageValue, expectedResult)
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
    
    // MARK: - Date
    
    func testDDMMYYDate() {
        let date = Date()
        print(date.ddmmyyyy)
    }

    // MARK: - Limit Sized
    func testLimitSized() {
        struct Website {
            let name: String
            @LimitSized(100) var users: [String]
        }
        // Given
        var website: Website = Website(name: "Test")
        // When
        website.users = Array(repeating: "Web User", count: 150)
        // Then
        let userCount: Int = 100
        XCTAssertEqual(website.users.count, userCount)
    }

    // MARK: - Repeat while
    func testRepeatWhile() {
        // Given
        var isCompleted: Bool = false
        var count: Int = 0
        let limit = 50
        // When
        repeatWhile(limit: limit,
                    repeatedCompletion: {
            count += 1
        },
                    endCompletion: {
            isCompleted = true
        })
        // Then
        let expectedResult = count == 50 && isCompleted
        XCTAssertTrue(expectedResult)
    }
    
    // MARK: - Managers
    
    func testGetAPIManager() async throws {
        
        struct Response: Codable {
            var results: [Result]
        }

        struct Result: Codable, Equatable {
            var trackId: Int
            var trackName: String
            var collectionName: String
        }
        
        let apiManager = APIManager()
        let response: Response = try await apiManager.get(url: "https://itunes.apple.com/search?term=taylor+swift&entity=song")
        let query = response.results
        
        XCTAssertNotEqual(query, [])
    }
}
