//	EX!
//  ViewController.swift
//  onetodo
//
//  Created by Michel Ortega on 10/29/19.
//  Copyright © 2019 Michel Ortega. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
	//	IBOutlets
	@IBOutlet weak var tableViewCell: TableViewCell!
	@IBOutlet weak var textField: UITextField!
	
	
	
	

	override func viewDidLoad() {
		super.viewDidLoad()
		
		configureTextfield()
		configureGesture()
		
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		return 1
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
		
		cell.backgroundColor = .white
		cell.textLabel?.text = "Enter your task below."
		
		return cell
	}
	
	private func configureTextfield() {
		self.textField.delegate = self
		
	}
	
	private func configureGesture() {
		let tapGesture = UITapGestureRecognizer(target: self, action: #selector(TableViewController.handleTap))
		view.addGestureRecognizer(tapGesture)
		
	}
	
	@objc func handleTap() {
		view.endEditing(true)
		
	}

	//	IBActions
	
}	//	class ends

extension TableViewController: UITextFieldDelegate {
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		self.view.endEditing(true)
		return false
	}
	
}	//	Extension ends

