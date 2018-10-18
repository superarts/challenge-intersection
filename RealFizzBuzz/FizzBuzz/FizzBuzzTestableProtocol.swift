//
//  FizzBuzzTestableProtocol.swift
//  RealFizzBuzz
//
//  Created by Leo on 10/9/18.
//  Copyright © 2018 Super Art Software. All rights reserved.
//

import Foundation

/*
 The *ONLY* purpose of this protocol is to fulfil the business requirement that we have to provide 3 zip files, otherwise we would add the following functions to `FizzBuzzProtocol`:

 - getResult: getResultV1
 - getResultWithLucky: getResultV2
 - getResultWithLuckyAndReport: getResultV3

 In a real world, I would talk with business guys to figure out why they want 3 zip files instead of 3 targets / branches etc. and try to work out a better solution, instead of following the requirements blindly.
 */
protocol FizzBuzzTestableProtocol {
	/// Get fizzbuzz string
	func getResultV1(from: UInt, to: UInt) -> String?
	/// Get fizzbuzz string with lucky
	func getResultV2(from: UInt, to: UInt) -> String?
	/// Get fizzbuzz string with lucky and report
	func getResultV3(from: UInt, to: UInt) -> String?
}

extension FizzBuzz: FizzBuzzTestableProtocol {
	func getResultV1(from: UInt, to: UInt) -> String? {
		return getResult(from: from, to: to)
	}

	func getResultV2(from: UInt, to: UInt) -> String? {
		return getResult(from: from, to: to, withLucky: true)
	}

	func getResultV3(from: UInt, to: UInt) -> String? {
		guard
			let result = getResult(from: from, to: to, withLucky: true),
			let report = getReport(from: from, to: to) else {
				return nil
		}
		return "\(result) \(report)"
	}
}
