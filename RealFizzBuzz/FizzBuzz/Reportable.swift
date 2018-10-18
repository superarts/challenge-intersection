//
//  Reportable.swift
//  RealFizzBuzz
//
//  Created by Leo on 10/9/18.
//  Copyright © 2018 Super Art Software. All rights reserved.
//

import Foundation

/// Classes confirms to `Reportable` can `getReport` from a range; business requirement is that `Reportable` classes always `CanBeLucky`
protocol Reportable: CanBeLucky {
	func getReport(from: UInt, to: UInt) -> String?
}

// Injecting `Reportable` to `FizzBuzz`
extension FizzBuzz: Reportable {
	func getReport(from: UInt, to: UInt) -> String? {
		guard from <= to else {
			return nil
		}

		var fizzCount = 0
		var buzzCount = 0
		var fizzbuzzCount = 0
		var luckyCount = 0
		var integerCount = 0

		for i in from ... to {
			if isLucky(i) {
				luckyCount += 1
			} else if i % 15 == 0 {
				fizzbuzzCount += 1
			} else if i % 3 == 0 {
				fizzCount += 1
			} else if i % 5 == 0 {
				buzzCount += 1
			} else {
				integerCount += 1
			}
		}

		return "fizz: \(fizzCount) buzz: \(buzzCount) fizzbuzz: \(fizzbuzzCount) lucky: \(luckyCount) integer: \(integerCount)"
	}
}
