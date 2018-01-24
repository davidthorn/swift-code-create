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
        let suffix: SwiftClassSuffix = .Protocol  

        print(suffix.rawValue)

    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
