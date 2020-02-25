//
//  TimeSliderModel.swift
//  onetodo
//
//  Created by Michel Ortega on 2/21/20.
//  Copyright © 2020 Michel Ortega. All rights reserved.
//

import Foundation
import UIKit

class TimeSliderModel {
	//	TODO: Implement logic for the Time Slider.
	
	
	//	Properties.

	
	//	Methods.
	
	/// Make value needed to estimate time for TimeSlider.
	/// - Parameters:
	///   - left: Left side value from the slider point.
	///   - right: Right side value from the slider point.
	func estimateTime(to left: Double,  to right: Double) -> Double {
		//	A - B = C
		let valueToReturn = right - left
		
		return valueToReturn
	}
}
