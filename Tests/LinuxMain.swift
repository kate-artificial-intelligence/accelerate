import XCTest

import accelerateTests

var tests = [XCTestCaseEntry]()
tests += accelerateTests.allTests()
XCTMain(tests)