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
		createGradient()
		setTextField()
		
	}
	
	// Dissmiss keyboard when user taps outside.
	@objc func handleTap() {
		view.endEditing(true)
		
	}
	
	func setTextField() {
		taskTextField.text = "Enter your task here:"
	
	}
	
	///	Render gradient background.
	func createGradient() {
//		let gradient = AnimatedGradientView(frame: view.bounds)
//		gradient.colors = [[UIColor.blue, UIColor.red]]
//		gradient.direction = .up
//		view.addSubview(gradient)
		
		let gradientLayer = CAGradientLayer()
		gradientLayer.colors = [UIColor.red, UIColor.blue]
		gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
		gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
		gradientLayer.frame = CGRect(origin: CGPoint.zero, size: (view?.bounds.size)!)
		view.layer.addSublayer(gradientLayer)
		
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		self.view.endEditing(true)
		return false
		
	}
	
	func createTask(){
		
	}
	func editTask(){
		
	}
	func deleteTask(){
		
	}
	
	override func setNeedsStatusBarAppearanceUpdate() {
		super.setNeedsStatusBarAppearanceUpdate()
		loadViewIfNeeded()
		
	}
	
	//	IBActions
	
}	//	class ends

//	Extension ends

