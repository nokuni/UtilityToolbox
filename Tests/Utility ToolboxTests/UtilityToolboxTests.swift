import XCTest
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
}
