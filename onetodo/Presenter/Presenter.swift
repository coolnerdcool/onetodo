//
//  Presenter.swift
//  onetodo
//	EX!
//  Created by Michel Ortega on 10/30/19.
//  Copyright © 2019 Michel Ortega. All rights reserved.
//

import Foundation

protocol taskProtocol {
	func createTas()
	func editTask()
	func deleteTask()
	
}

//	Properties keys for keychain.
var kUSERTASK = "userTask"
var kUSERTIME = "userTime"
var kUSERNAME = "username"

//	This class handles the information between the view and the logic of the app.
class Presenter {
	
//	Method for handleing the user task and store with keychain.
	
}
