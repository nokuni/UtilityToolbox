import XCTest
import SpriteKit
@testable import Utility_Toolbox

final class ExtensionTests: XCTestCase {
    
    override class func setUp() {
        
    }
    
    override func tearDownWithError() throws {
        
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

    func testStringSubscript() {
        // Given
        let word = "Señorita"
        // When
        let letter: Character = word[2]
        // Then
        let expectedResult: Character = "ñ"
        XCTAssertEqual(letter, expectedResult)
    }

    func testStringRangeSubscript() {
        // Given
        let word = "Señorita"
        // When
        let letter: Substring = word[2..<6]
        // Then
        let expectedResult: Substring = "ñori"
        XCTAssertEqual(letter, expectedResult)
    }
    
    func testWordCount() {
        // Given
        let sentence = "The weather is not good today."
        // When
        let wordCount = sentence.wordCount
        // Then
        let expectedResult: Int = 6
        XCTAssertEqual(wordCount, expectedResult)
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
    
    // MARK: - API Manager
    func testGetRequest() async throws {
        
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
