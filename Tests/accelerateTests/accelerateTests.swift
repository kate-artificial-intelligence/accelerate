import XCTest
@testable import accelerate

final class accelerateTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

        //global
        let v = [1.0, 2.0, 7.0, 8.0, 9.0]
		var s = 3.0
		var vsresult = [Double](repeating : 0.0, count : v.count)


		//example [[vDSP_vsmulD]]
		vDSP_vsmulD(v, 1, &s, &vsresult, 1, vDSP_Length(v.count))
		print(vsresult)
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
