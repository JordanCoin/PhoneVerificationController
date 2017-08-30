//
//  ViewController.swift
//  Example
//
//  Created by David Jennes on 17/09/16.
//  Copyright © 2016 Appwise. All rights reserved.
//

import PhoneVerificationController
import UIKit

class ViewController: UIViewController {
	@IBAction func startVerification() {
		let configuration = Configuration(requestCode: { _, completion in
			DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
				completion("1234567890", nil)
			}
		}, signIn: { _, _, completion in
			DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
				completion(nil)
			}
		})

		let vc = PhoneVerificationController(configuration: configuration)
		present(vc, animated: true)
	}
}