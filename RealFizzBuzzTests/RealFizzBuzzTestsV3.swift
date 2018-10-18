//
//  RealFizzBuzzTestsV3.swift
//  RealFizzBuzzTests
//
//  Created by Leo on 10/9/18.
//  Copyright © 2018 Super Art Software. All rights reserved.
//

import XCTest
@testable import RealFizzBuzz

class RealFizzBuzzTestsV3: XCTestCase {

	var fizzBuzz: FizzBuzzTestableProtocol!

	override func setUp() {
		super.setUp()
		fizzBuzz = FizzBuzz()
	}

	override func tearDown() {
		super.tearDown()
	}

	func test1to20WithLuckyAndReport() {
		XCTAssertEqual(fizzBuzz.getResultV3(from: 1, to: 20), "1 2 lucky 4 buzz fizz 7 8 fizz buzz 11 fizz lucky 14 fizzbuzz 16 17 fizz 19 buzz fizz: 4 buzz: 3 fizzbuzz: 1 lucky: 2 integer: 10", "FizzBuzz 1 to 20 with lucky and report failed")
	}

	func testEdgeLowestWithLuckyAndReport() {
		XCTAssertEqual(fizzBuzz.getResultV3(from: 0, to: 20), "fizzbuzz 1 2 lucky 4 buzz fizz 7 8 fizz buzz 11 fizz lucky 14 fizzbuzz 16 17 fizz 19 buzz fizz: 4 buzz: 3 fizzbuzz: 2 lucky: 2 integer: 10", "FizzBuzz Edge 0")
	}

	func testSameFizzBuzz() {
		XCTAssertEqual(fizzBuzz.getResultV3(from: 0, to: 0), "fizzbuzz fizz: 0 buzz: 0 fizzbuzz: 1 lucky: 0 integer: 0", "FizzBuzz same 0")
		XCTAssertEqual(fizzBuzz.getResultV3(from: 15, to: 15), "fizzbuzz fizz: 0 buzz: 0 fizzbuzz: 1 lucky: 0 integer: 0", "FizzBuzz same 15")
	}

	func testSameFizz() {
		XCTAssertEqual(fizzBuzz.getResultV3(from: 6, to: 6), "fizz fizz: 1 buzz: 0 fizzbuzz: 0 lucky: 0 integer: 0", "FizzBuzz same 6")
	}

	func testSameBuzz() {
		XCTAssertEqual(fizzBuzz.getResultV3(from: 5, to: 5), "buzz fizz: 0 buzz: 1 fizzbuzz: 0 lucky: 0 integer: 0", "FizzBuzz same 5")
		XCTAssertEqual(fizzBuzz.getResultV3(from: 10, to: 10), "buzz fizz: 0 buzz: 1 fizzbuzz: 0 lucky: 0 integer: 0", "FizzBuzz same 10")
	}

	func testSameLucky() {
		XCTAssertEqual(fizzBuzz.getResultV3(from: 3, to: 3), "lucky fizz: 0 buzz: 0 fizzbuzz: 0 lucky: 1 integer: 0", "FizzBuzz same 3")
		XCTAssertEqual(fizzBuzz.getResultV3(from: 13, to: 13), "lucky fizz: 0 buzz: 0 fizzbuzz: 0 lucky: 1 integer: 0", "FizzBuzz same 13")
		XCTAssertEqual(fizzBuzz.getResultV3(from: 30, to: 30), "lucky fizz: 0 buzz: 0 fizzbuzz: 0 lucky: 1 integer: 0", "FizzBuzz same 30")
	}
}
