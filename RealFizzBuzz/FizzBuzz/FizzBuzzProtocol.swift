//
//  FizzBuzzProtocol.swift
//  RealFizzBuzz
//
//  Created by Leo on 10/9/18.
//  Copyright © 2018 Super Art Software. All rights reserved.
//

import Foundation

// Please check `ViewController.swift` for usage.
public protocol FizzBuzzProtocol {
	func getResultString(from: UInt, to: UInt) -> String?
}

// Simplest compile-time dependency injection
extension FizzBuzz: FizzBuzzProtocol {
	public func getResultString(from: UInt, to: UInt) -> String? {
		//return getResultV1(from: from, to: to)
		//return getResultV2(from: from, to: to)
		return getResultV3(from: from, to: to)
	}
}
