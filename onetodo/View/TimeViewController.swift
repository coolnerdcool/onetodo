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
import RangeUISlider
import UIKit

class TimeViewController: UIViewController, RangeUISliderDelegate {
	
	// IBOutlets.
	@IBOutlet weak var timerButton: UIButton!
	@IBOutlet weak var timerLabel: UILabel!
	
	
	
	
	//	Properties.
	let navigationBarHelper: NavigationBarHelper = NavigationBarHelper()
	let timerSliderModel = TimeSliderModel()	//	All logic for slider values.
	
	private var rangeSlider: RangeUISlider!
	
	override func viewDidLoad() {
		
		super.viewDidLoad()
		
		self.setBackBtnCustom()
		self.setButton()
		self.setLabel()
		self.setRangeSlider()
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
	
	/// Create al the elements and properties for the button. Call it then.
	func setButton() {
		
		//TODO:	-	Make custom button title.
		timerButton.setTitle("Touch here to start timer", for: .normal)
		timerButton.tintColor = .white
	}
	
	/// Show the value from time slider.
	func setLabel() {
		
		//TODO:	-	Return the sum of both value points from the slider.
		var leftValue: Double	//	Left value point from slider
		var rightValue: Double
		
		timerLabel.textColor = .white
	}
	
	func setRangeSlider() {
		rangeSlider = RangeUISlider(frame: CGRect(origin: CGPoint(x: 20, y: 20), size: CGSize(width: 100, height: 50)))
		rangeSlider.translatesAutoresizingMaskIntoConstraints = false
		rangeSlider.delegate = self
		rangeSlider.scaleMinValue = 0 //If you don't set any value the default is 0
		rangeSlider.scaleMaxValue = 100 //If you don't set any value the default is 1
		rangeSlider.defaultValueLeftKnob = 25 //If the scale is the default one insert a value between 0 and 1
		rangeSlider.defaultValueRightKnob = 75 //If the scale is the default one insert a value between 0 and 1
		rangeSlider.rangeSelectedGradientColor1 = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
		rangeSlider.rangeSelectedGradientColor2 = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
		rangeSlider.rangeSelectedGradientStartPoint = CGPoint(x: 0, y: 0.5)
		rangeSlider.rangeSelectedGradientEndPoint = CGPoint(x: 0, y: 1)
		rangeSlider.rangeNotSelectedGradientColor1 = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
		rangeSlider.rangeNotSelectedGradientColor2 = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
		rangeSlider.rangeNotSelectedGradientStartPoint = CGPoint(x: 0, y: 0.5)
		rangeSlider.rangeNotSelectedGradientEndPoint = CGPoint(x: 0, y: 1)
		rangeSlider.barHeight = 20
		rangeSlider.barCorners = 10
		rangeSlider.leftKnobColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
		rangeSlider.leftKnobWidth = 40
		rangeSlider.leftKnobHeight = 40
		rangeSlider.leftKnobCorners = 20
		rangeSlider.rightKnobColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
		rangeSlider.rightKnobWidth = 40
		rangeSlider.rightKnobHeight = 40
		rangeSlider.rightKnobCorners = 20
		self.view.addSubview(rangeSlider)
		
		//Setup slide with programmatic autolayout.
		NSLayoutConstraint.activate([
			NSLayoutConstraint(item: rangeSlider!,
							   attribute: .leading,
							   relatedBy: .equal,
							   toItem: self.view,
							   attribute: .leading,
							   multiplier: 1.0,
							   constant: 20),
			NSLayoutConstraint(item: rangeSlider!,
							   attribute: .trailing,
							   relatedBy: .equal,
							   toItem: self.view,
							   attribute: .trailing,
							   multiplier: 1.0,
							   constant: -20),
			NSLayoutConstraint(item: rangeSlider!,
							   attribute: .top,
							   relatedBy: .equal,
							   toItem: self.view,
							   attribute: .top,
							   multiplier: 1.0,
							   constant: 100),
			NSLayoutConstraint(item: rangeSlider!,
							   attribute: .height,
							   relatedBy: .equal,
							   toItem: nil,
							   attribute: .notAnAttribute,
							   multiplier: 1.0,
							   constant: 600)
		])
	}
	
	//	Get the values from both sides of the slider.
	func rangeChangeFinished(minValueSelected: CGFloat, maxValueSelected: CGFloat, slider: RangeUISlider) {
		print("FINISH min: \(minValueSelected) -  max: \(maxValueSelected) - identifier: \(slider.identifier)")
		// TODO: Implement slider logic to set a timer.
	}
	
	//	Changing values from both sides of the slider.
	func rangeIsChanging(minValueSelected: CGFloat, maxValueSelected: CGFloat, slider: RangeUISlider) {
		print("min: \(minValueSelected) -  max: \(maxValueSelected) - identifier: \(slider.identifier)")
	}
	
	//	Selector for SetBtnCustom() makes the button work actually going back.
	@objc func onTapBtn() {
		self.navigationController?.popViewController(animated: true)
	}
	
	//	IBActions.
}
