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

// MARK: The methods inside here manage the way the task is stored and used.
class Presenter {
	
	
	
	///	This method stores the task in the keychain.
	func saveTask() {
		
	}
	
	/// This method retrieves the task information from the keychain.
	func getTask() {
		
	}
	
}
