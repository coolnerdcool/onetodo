//
//  TaskModel.swift
//  onetodo
//
//  Created by Michel Ortega on 12/12/19.
//  Copyright © 2019 Michel Ortega. All rights reserved.
//

import Foundation
import SwiftKeychainWrapper


class TaskModel {
	
	//	Properties keys for keychain.
	var kUSERTASK = "userTask"
	var kUSERTIME = "userTime"
	var kUSERNAME = "username"
	
	///	This method stores the task in the keychain.
	func saveTask(_ task: String) -> Bool {
		let saveSuccessful: Bool = KeychainWrapper.standard.set(task, forKey: kUSERTASK)
		return saveSuccessful
		
	}
	
	/// This method retrieves the task information from the keychain.
	func getTask() -> String {
		let retrievedString: String? = KeychainWrapper.standard.string(forKey: kUSERTASK)
		return retrievedString ?? ""
		
	} 
}
