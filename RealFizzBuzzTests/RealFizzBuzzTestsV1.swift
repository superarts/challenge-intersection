//
//  RealFizzBuzzTests.swift
//  RealFizzBuzzTests
//
//  Created by Leo on 10/9/18.
//  Copyright © 2018 Super Art Software. All rights reserved.
//

import XCTest
@testable import RealFizzBuzz

class RealFizzBuzzTestsV1: XCTestCase {

	var fizzBuzz: FizzBuzzTestableProtocol!

    override func setUp() {
        super.setUp()
		fizzBuzz = FizzBuzz()
    }
    
    override func tearDown() {
        super.tearDown()
    }

	func test1to20() {
		XCTAssertEqual(fizzBuzz.getResultV1(from: 1, to: 20), "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz", "FizzBuzz 1 to 20")
	}

	func testEdgeLowest() {
		XCTAssertEqual(fizzBuzz.getResultV1(from: 0, to: 20), "fizzbuzz 1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz", "FizzBuzz Edge 0")
	}

	func testSameFizzBuzz() {
		XCTAssertEqual(fizzBuzz.getResultV1(from: 0, to: 0), "fizzbuzz", "FizzBuzz same 0")
		XCTAssertEqual(fizzBuzz.getResultV1(from: 15, to: 15), "fizzbuzz", "FizzBuzz same 15")
	}

	func testSameFizz() {
		XCTAssertEqual(fizzBuzz.getResultV1(from: 3, to: 3), "fizz", "FizzBuzz same 3")
		XCTAssertEqual(fizzBuzz.getResultV1(from: 6, to: 6), "fizz", "FizzBuzz same 6")
	}

	func testSameBuzz() {
		XCTAssertEqual(fizzBuzz.getResultV1(from: 5, to: 5), "buzz", "FizzBuzz same 5")
		XCTAssertEqual(fizzBuzz.getResultV1(from: 10, to: 10), "buzz", "FizzBuzz same 10")
	}
}
