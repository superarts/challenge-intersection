//
//  FizzBuzz.swift
//  RealFizzBuzz
//
//  Created by Leo on 10/9/18.
//  Copyright © 2018 Super Art Software. All rights reserved.
//

import Foundation

public class FizzBuzz {
	func getResult(from: UInt, to: UInt, withLucky: Bool = false) -> String? {
		guard from <= to else {
			return nil
		}

		var str = ""
		for i in from ... to {
			if withLucky && isLucky(i) {
				str += "lucky "
			} else if i % 15 == 0 {
				str += "fizzbuzz "
			} else if i % 3 == 0 {
				str += "fizz "
			} else if i % 5 == 0 {
				str += "buzz "
			} else {
				str += "\(i) "
			}
		}

		return str.trimmingCharacters(in: .whitespacesAndNewlines)
	}
}
