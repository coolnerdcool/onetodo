//
//  TaskDetailViewController.swift
//  onetodo
//
//  Created by Michel Ortega on 1/12/20.
//  Copyright © 2020 Michel Ortega. All rights reserved.
//

import Foundation
import UIKit

class TaskDetailViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		createGradient()
	}
	
	func createGradient() {
		
		let gradientLayer        = CAGradientLayer()
		gradientLayer.colors     = [UIColor.red, UIColor.blue]
		gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
		gradientLayer.endPoint   = CGPoint(x: 1.0, y: 1.0)
		gradientLayer.frame      = CGRect(origin: CGPoint.zero, size: (view?.bounds.size)!)
		view.layer.addSublayer(gradientLayer)
		
	}
	
	
}
