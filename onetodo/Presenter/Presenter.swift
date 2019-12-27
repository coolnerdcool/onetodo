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

// MARK: The methods inside here manage the way the task is stored and used.
class Presenter: taskProtocol {
	
	weak private var view: taskProtocol?
	
	func attachView(view: taskProtocol) {
		self.view = view
	}
	
	func detachView() {
		self.view = nil
	}
	
	func createTask() {
		debugPrint("createTask works.")
		//	Store the task in locally.
	}
	
	func editTask() {
		debugPrint("editTask works")
		//	Replace the task inside the keychain.
		//	Make sure the task place remains the same.
	}
	
	func deleteTask() {
		//	Remove the task from the keychain.
		
	}

	
}
