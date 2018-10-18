//
//  CanBeLucky.swift
//  RealFizzBuzz
//
//  Created by Leo on 10/9/18.
//  Copyright © 2018 Super Art Software. All rights reserved.
//

import Foundation

/// Classes confirms to `CanBeLucky` are able to tell whether an unsigned integer `isLucky`
protocol CanBeLucky {
	func isLucky(_ i: UInt) -> Bool
}

// Injecting `isLucky` to `FizzBuzz`
extension FizzBuzz: CanBeLucky {
	func isLucky(_ i: UInt) -> Bool {
		return String(i).contains("3")
	}
}
