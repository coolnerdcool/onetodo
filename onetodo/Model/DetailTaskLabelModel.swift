//
//  DetailTaskLabelModel.swift
//  onetodo
//
//  Created by Michel Ortega on 1/26/20.
//  Copyright © 2020 Michel Ortega. All rights reserved.
//

import Foundation
import UIKit

class DetailTaskLabelModel {
	//	Get the data stored in the keychain.
	let task: String = TaskModel().getTask()
	
	
	/// A new random label is returned.
	/// - Parameter task: String for interpolation in label.
	func randomDetailTaskLabel(_ task: String) {
		
		let detailTaskLabels = [
			"Your current task:\n'\(task)'\n is the only thing that matters now.",
			"\(task)\n is really important for you.\n Just Do It.",
			"Right now you only have to do one thing:\n \(task)\n That's it.",
			"\(task)\n\(task)\n And only that. Make it happen."
		]
		
	}
}
