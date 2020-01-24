//
//  TaskDetailViewController.swift
//  onetodo
//
//  Created by Michel Ortega on 1/12/20.
//  Copyright © 2020 Michel Ortega. All rights reserved.
//

import AnimatedGradientView
import Foundation
import UIKit

class TaskDetailViewController: UIViewController {
	
	//	IBOutlets.
	@IBOutlet weak var taskDetailLabel: UILabel!
	
	//	Properties.
	private let mainViewController = ViewController()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		createGradient()
		clearNavigationController()
		showCurrentTask()
	}
	
	func createGradient() {
		
		let gradientLayer        = CAGradientLayer()
		gradientLayer.colors     = [UIColor.red, UIColor.blue]
		gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
		gradientLayer.endPoint   = CGPoint(x: 1.0, y: 1.0)
		gradientLayer.frame      = CGRect(origin: CGPoint.zero, size: (view?.bounds.size)!)
		view.layer.addSublayer(gradientLayer)
		
	}
	
	func clearNavigationController() {
		// Next 4 lines set the NavigationController transparent.
		self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
		self.navigationController?.navigationBar.shadowImage   = UIImage()
		self.navigationController?.navigationBar.isTranslucent = true
		self.navigationController?.view.backgroundColor        = .clear
		
	}
	
	func showCurrentTask() {
		let task = mainViewController.currentTask
		taskDetailLabel.text =	("Your current task:\n'\(task)'\n is the only thing that matters now.")
		
	}
	
	
}
