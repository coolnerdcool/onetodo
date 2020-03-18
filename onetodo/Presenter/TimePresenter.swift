//
//  TaskPresenter.swift
//  onetodo
//
//  Created by Michel Ortega on 2/5/20.
//  Copyright © 2020 Michel Ortega. All rights reserved.
//

import AnimatedGradientView
import Foundation
import RangeUISlider
import UIKit

//	Protocol?

class TimePresenter: RangeUISlider, RangeUISliderDelegate {
	
	//	PROPERTIES.
	let timeSliderModel = TimeSliderModel()
	var bothSliderValues: CGFloat = 0.0
	//	IBOUTLETS.
	
	//	IBACTIONS.
	
	//	METHODS.
	
	/// Using the TimerModel return a String label with the proper values from both sides of the slider.
	func createTimerLabel() -> String {
		//	Interpolate the values and return the string.
		
		let leftValue: Double
		let rightValue: Double
		let stringToReturn = ""
		
		return stringToReturn
	}
	
	func rangeChangeFinished(minValueSelected: CGFloat, maxValueSelected: CGFloat, slider: RangeUISlider) {
		
		bothSliderValues = minValueSelected + maxValueSelected
	}
}
