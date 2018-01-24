//
// SwiftCodeCreateTests.swift
//
// Created by David Thorn
// Copyright @ 2017 David Thorn. All rights reserved
//


import XCTest
@testable import SwiftCodeCreate

class SwiftCodeCreateTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftCodeCreate().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
