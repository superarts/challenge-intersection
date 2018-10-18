//
//  ViewController.swift
//  RealFizzBuzz
//
//  Created by Leo on 10/9/18.
//  Copyright © 2018 Super Art Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var label: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let fizzBuzz: FizzBuzzProtocol = FizzBuzz()
		label.text = fizzBuzz.getResultString(from: 1, to: 20)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}

