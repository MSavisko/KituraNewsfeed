import XCTest
@testable import KituraNewsfeed

class KituraNewsfeedTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(KituraNewsfeed().text, "Hello, World!")
    }


    static var allTests : [(String, (KituraNewsfeedTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
