//
//  UIColor+Ext.swift
//  onetodo
//
//  Created by Michel Ortega on 2/12/20.
//  Copyright © 2020 Michel Ortega. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
	
	/// Return a random generated UIColor.
	func random() -> UIColor {
		
		let redValue: CGFloat = .random(in: 0...1)
		let greenValue: CGFloat = .random(in: 0...1)
		let blueValue: CGFloat = .random(in: 0...1)
		
		return UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
	}
	
	func randomGradient() {
		
	}
}
