//
//  Presenter.swift
//  onetodo
//	EX!
//  Created by Michel Ortega on 10/30/19.
//  Copyright © 2019 Michel Ortega. All rights reserved.
//

import Foundation
import SwiftKeychainWrapper

// MARK:  Task Protocol.
protocol TaskProtocol: NSObjectProtocol{
	func createTask()
	func editTask()
	func deleteTask()
	
}

// MARK: The methods inside here manage the way the task is stored and used.
class TaskPresenter: TaskProtocol {
	
	weak private var view: TaskProtocol?
	
	func attachView(view: TaskProtocol) {
		self.view = view
	}
	
	func detachView() {
		self.view = nil
	}
	
	
	func getDetailTask(_ task: String)  {
		
	
	}
	
	func createTask() {
		debugPrint("createTask works.")

	}
	
	func editTask() {
		debugPrint("editTask works")

	}
	
	func deleteTask() {
		//	Remove the task from the keychain.
		
	}
	
	// MARK: Methods.
	// TODO: Create methods for random use of labels.
	
}
