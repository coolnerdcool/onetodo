//
//  Presenter.swift
//  onetodo
//	EX!
//  Created by Michel Ortega on 10/30/19.
//  Copyright © 2019 Michel Ortega. All rights reserved.
//

import Foundation
import SwiftKeychainWrapper

protocol taskProtocol: AnyObject{
	func createTask()
	func editTask()
	func deleteTask()
	
}

//	Properties keys for keychain.
var kUSERTASK = "userTask"
var kUSERTIME = "userTime"
var kUSERNAME = "username"

// MARK: The methods inside here manage the way the task is stored and used.
class Presenter {
	
	weak private var view: taskProtocol?
	
	func attachView(view: taskProtocol) {
		self.view = view
	}
	
	func detachView() {
		self.view = nil
	}
	
	///	This method stores the task in the keychain.
	func saveTask(_ task: String) -> Bool {
		let saveSuccessful: Bool = KeychainWrapper.standard.set(task, forKey: kUSERTASK)
		return saveSuccessful
		
	}
	
	/// This method retrieves the task information from the keychain.
	func getTask(_ key: String) -> String {
		let retrievedString: String? = KeychainWrapper.standard.string(forKey: key)
		return retrievedString ?? ""
		
	}
	
}
