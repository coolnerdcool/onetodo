//	EX!
//  ViewController.swift
//  onetodo
//
//  Created by Michel Ortega on 10/29/19.
//  Copyright © 2019 Michel Ortega. All rights reserved.
//

import UIKit
import AnimatedGradientView

class ViewController: UIViewController {
	//	IBOutlets

	
	//	Only call to methods here.
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let gradient = AnimatedGradientView(frame: view.bounds)
		gradient.colors = [[UIColor.blue, UIColor.red]]
		gradient.direction = .up
		view.addSubview(gradient)
		
	}
	
	// Dissmiss keyboard when user taps outside.
	@objc func handleTap() {
		view.endEditing(true)
		
	}
	
//	private func updateLabel() {
//		switch childForStatusBarStyle!.preferredStatusBarStyle {
//		case .default:
//			label.text = "dark"
//		case .lightContent:
//			label.text = "light"
//		@unknown default:
//			label.text = "unknown color"
//		}
//	}
	
	override func setNeedsStatusBarAppearanceUpdate() {
		super.setNeedsStatusBarAppearanceUpdate()
		loadViewIfNeeded()
		
	}

	//	IBActions
	
}	//	class ends

//	Extension ends

