//	EX!
//  ViewController.swift
//  onetodo
//
//  Created by Michel Ortega on 10/29/19.
//  Copyright © 2019 Michel Ortega. All rights reserved.
//

import UIKit
import Foundation
import AnimatedGradientView

class ViewController: UIViewController, UITextFieldDelegate, taskProtocol{
	//	IBOutlets
	           
	@IBOutlet weak var taskTextField: UITextField!
	private let taskPresenter = Presenter()
	
	
	//	Only call to methods here.
	override func viewDidLoad() {
		super.viewDidLoad()
		self.taskPresenter.attachView(view: self)
		self.taskTextField.delegate = self
		self.hideKeyboardWhenTappedAround()
		
		// Next 4 lines set the NavigationController transparent.
		self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
		self.navigationController?.navigationBar.shadowImage = UIImage()
		self.navigationController?.navigationBar.isTranslucent = true
		self.navigationController?.view.backgroundColor = .clear
		
		createGradient()
		setTextField()
		
	}
	
	// Dissmiss keyboard when user taps outside.
	@objc func handleTap() {
		view.endEditing(true)
		
	}
	
	///	Prepare taskTexField to display properly.
	func setTextField() {
		taskTextField.text = "Enter your task here:"
	
	}
	
	///	Render gradient background.
	func createGradient() {
		
		let gradientLayer = CAGradientLayer()
		gradientLayer.colors = [UIColor.red, UIColor.blue]
		gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
		gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
		gradientLayer.frame = CGRect(origin: CGPoint.zero, size: (view?.bounds.size)!)
		view.layer.addSublayer(gradientLayer)
		
	}
	
	///	Hide keyboard after user press return key.
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		self.view.endEditing(true)
		return false
		
	}
	
	///	Manages task created by the user. Triggers a chain of actions after timer starts.
	func createTask() {
		
	}
	
	///	Mostly for pause.
	func editTask() {
		
	}
	
	///	Delete task restarts timer or something like that.
	func deleteTask() {
		
	}
	
	override func setNeedsStatusBarAppearanceUpdate() {
		super.setNeedsStatusBarAppearanceUpdate()
		loadViewIfNeeded()
		
	}
	
	//	IBActions
	
}

// MARK: - Extensions

extension UIViewController {
	
	func hideKeyboardWhenTappedAround() {
		let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
		tap.cancelsTouchesInView = false
		view.addGestureRecognizer(tap)
		
	}
	
	@objc func dismissKeyboard() {
		view.endEditing(true)
		
	}
	
}

