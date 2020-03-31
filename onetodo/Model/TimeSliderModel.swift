//
//  TimeSliderModel.swift
//  onetodo
//
//  Created by Michel Ortega on 2/21/20.
//  Copyright © 2020 Michel Ortega. All rights reserved.
//

import Foundation
import RangeUISlider
import UIKit

class TimeSliderModel: UIViewController, RangeUISliderDelegate {
	
	//TODO:	-	IMPLEMENT THE LOGIC FOR THE TIME SLIDER.
	//MARK:	-	PROPERTIES.
	
	//MARK:	-	METHODS.
	
	/// Make value needed to estimate time for TimeSlider.
	/// - Parameters:
	///   - left: Left side value from the slider point.
	///   - right: Right side value from the slider point.
	func estimateTime(to left: Double,  to right: Double) -> Double {
		//	A - B = C
		let valueToReturn = right - left
		
		return valueToReturn
	}
	
	/// Get CGFloat values from both slider points and mix' em
	/// - Parameters:
	///   - leftValue: CGFloat value from the left side of slider.
	///   - rightValue: CGFloat value from the right side of slider.
	func bothSliderValues(leftValue: CGFloat, rightValue: CGFloat) -> CGFloat {
		//	Get both values from the slider points and usethem
		//TODO:	-	ACCESS THE LIBRARY
		let bothValuesToReturn: CGFloat
		bothValuesToReturn = leftValue + rightValue
		
		return bothValuesToReturn
	}
	
	func rangeChangeFinished(minValueSelected: CGFloat, maxValueSelected: CGFloat, slider: RangeUISlider) {
		
	}
}
