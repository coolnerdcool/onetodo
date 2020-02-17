//
//  TimeViewController.swift
//  onetodo
//
//  Created by Michel Ortega on 2/3/20.
//  Copyright © 2020 Michel Ortega. All rights reserved.
//

//import AGCircularPicker
import AnimatedGradientView
import Foundation
import UIKit

class TimeViewController: UIViewController {
	
	// IBOutlets.
	
	//	Properties.
	let navigationBarHelper: NavigationBarHelper = NavigationBarHelper()
	
	override func viewDidLoad() {
		
		super.viewDidLoad()
		
		self.setBackBtnCustom()
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		
	}
	
	//	Functions.
	func startTimer() {
		
		
	}
	
	func setBackBtnCustom() {
		// Custom back button for navigationController.
		let backLeftBtn: UIButton = UIButton()
		
		backLeftBtn.setImage(UIImage(named: "backBtn"), for: UIControl.State())
		backLeftBtn.addTarget(self, action: #selector(onTapBtn), for: UIControl.Event.touchUpInside)
		backLeftBtn.frame = CGRect(x: 0, y: 0, width: 32/2, height: 27/2)
		
		let barButton = UIBarButtonItem(customView: backLeftBtn)
		self.navigationItem.leftBarButtonItem = barButton
		
	}
	
	//	Selector for SetBtnCustom() makes the button work actually going back.
	@objc func onTapBtn() {
		self.navigationController?.popViewController(animated: true)
	}
	
	//	IBActions.
	
	
}
