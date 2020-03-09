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
import SwiftKeychainWrapper

class ViewController: UIViewController, UITextFieldDelegate, taskProtocol {
	
	//	IBOutlets
	@IBOutlet weak var taskTextField: UITextField!
	
	
	//	Properties
	private let taskPresenter = TaskPresenter()
	var currentTask: String =  ""
	
	
	//	Only call to methods here.
	override func viewDidLoad() {
		super.viewDidLoad()
		self.taskPresenter.attachView(view: self)
		self.taskTextField.delegate = self
		self.hideKeyboardWhenTappedAround()
		
		// Next 4 lines set the NavigationController transparent.
		self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
		self.navigationController?.navigationBar.shadowImage   = UIImage()
		self.navigationController?.navigationBar.isTranslucent = true
		self.navigationController?.view.backgroundColor        = .clear
		
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
	
	///	Preapare label. Only appears when theres is a task.
	func setTaskLabel() {
		
	}
	
	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		guard let textFieldText = textField.text,
			let rangeOfTextToReplace = Range(range, in: textFieldText ) else {
				return false
		}
		let substringToReplace = textFieldText[rangeOfTextToReplace]
		let count = textFieldText.count - substringToReplace.count + string.count
		
		return count <= 42
	}
	
	///	Render gradient background.
	func createGradient() {
		
		let gradientLayer        = CAGradientLayer()
//		gradientLayer.colors	 = [UIColor.random, UIColor.random]
//		gradientLayer.colors     = [UIColor.red, UIColor.green]
		gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
		gradientLayer.endPoint   = CGPoint(x: 1.0, y: 1.0)
		gradientLayer.frame      = CGRect(origin: CGPoint.zero, size: (view?.bounds.size)!)
		view.layer.addSublayer(gradientLayer)
		
	}
	
	///	Hide keyboard after user press return key.
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		
		let task: String
		
		//	If textfield empty after return pushed.
		if textField.text!.isEmpty {
			task = "Write your task."
			
		} else {
			
			//task = textField.text!
			currentTask = textField.text!
			//	Save the task entered by user inside keychain.
			TaskModel().saveTask(currentTask)
			
			createTask()	//	store textField(task) in keychain.
			debugPrint("Textfield:", textField.text)
			//taskLabel.text = ("Your current task:\n'\(task)'\n is the only thing that matters now.\n (Touch here for more info.)")
		}
		
		self.view.endEditing(true)
		return false
	}
	
	///	Manages task created by the user. Triggers a chain of actions after timer starts.
	func createTask() {
		//	Store the data in textField into the keychain.
		guard let newTask = taskTextField.text else {return}
		KeychainWrapper.standard.set(newTask, forKey: "kUSERTASK")
		
	}
	
	// TODO: - What's the purpose of this function?
	///	Mostly for pause.
	func editTask() {
		
	}
	
	///	Delete task restarts timer or something like that.
	func deleteTask() {
		
	}
	
	//	Makes the navigation controller bar clear.
	override func setNeedsStatusBarAppearanceUpdate() {
		super.setNeedsStatusBarAppearanceUpdate()
		loadViewIfNeeded()
		
	}
	
	//	IBActions
	///	Manage users task.
	@objc @IBAction func saveTask(_ sender: UITextField) {
		if sender.text == "" {
			debugPrint("ERROR: No empty string as task.")
			//	Show alert to user telling to enter correct task.
		} else {
			//	Call protocol method to store in the keychain. Use conditional to avoid error.

			createTask()
		}
		
		resignFirstResponder()
		print("Sender tag: ", sender.tag)
		
	}
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
