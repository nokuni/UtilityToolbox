//
//  SFSymbolTests.swift
//  
//
//  Created by Yann Christophe Maertens on 11/07/2023.
//

import XCTest
@testable import Utility_Toolbox

final class SFSymbolTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_sfAccessibilitySymbol_success() throws {
        let symbols = SFSymbol.accessibilitySymbols
        for index in SFAccessibilitySymbol.allCases.indices {
            let symbol = SFAccessibilitySymbol.allCases[index].symbol
            XCTAssertTrue(symbol == symbols[index])
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
