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
	private let detailTaskLabelModel = DetailTaskLabelModel()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//	Only call methods inside of here.
		createGradient()
		clearNavigationController()
		setBackBtnCustom()
		showCurrentTask()
	}
	
	func createGradient() {
		//	Set gradient values for background.
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
	
	func setBackBtnCustom() {
		// Custom back button for navigationController.
		let backLeftBtn: UIButton = UIButton()
		
		backLeftBtn.setImage(UIImage(named: "backBtn"), for: UIControl.State())
		backLeftBtn.addTarget(self, action: #selector(onClickBtn), for: UIControl.Event.touchUpInside)
		backLeftBtn.frame = CGRect(x: 0, y: 0, width: 32/2, height: 27/2)
		
		let barButton = UIBarButtonItem(customView: backLeftBtn)
		self.navigationItem.leftBarButtonItem = barButton
		
	}
	
	func showCurrentTask() {
		//	Get user task from the keychain and store it in constant.
		let task = TaskModel().getTask()
		taskDetailLabel.text =	detailTaskLabelModel.randomDetailTaskLabel(task)
		
	}
	
	//	Selector for SetBtnCustom() makes the button work actually going back.
	@objc func onClickBtn() {
		 self.navigationController?.popViewController(animated: true)
	}
}
