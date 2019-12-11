//	EX!
//  ViewController.swift
//  onetodo
//
//  Created by Michel Ortega on 10/29/19.
//  Copyright © 2019 Michel Ortega. All rights reserved.
//

import UIKit
import AnimatedGradientView

// TODO: -	Declare presenter.
// TODO: -	Declare protocol.


class ViewController: UIViewController {
	//	IBOutlets
	@IBOutlet weak var taskTextField: UITextField!
	
	
	//	Only call to methods here.
	override func viewDidLoad() {
		super.viewDidLoad()
		
		createGradient()
		
	}
	
	// Dissmiss keyboard when user taps outside.
	@objc func handleTap() {
		view.endEditing(true)
		
	}
	
	
	///	Render gradient background.
	func createGradient() {
		let gradient = AnimatedGradientView(frame: view.bounds)
		gradient.colors = [[UIColor.blue, UIColor.red]]
		gradient.direction = .up
		view.addSubview(gradient)
		
	}
	
	override func setNeedsStatusBarAppearanceUpdate() {
		super.setNeedsStatusBarAppearanceUpdate()
		loadViewIfNeeded()
		
	}

	//	IBActions
	
}	//	class ends

//	Extension ends

