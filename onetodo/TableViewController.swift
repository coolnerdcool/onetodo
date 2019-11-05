//	EX!
//  ViewController.swift
//  onetodo
//
//  Created by Michel Ortega on 10/29/19.
//  Copyright © 2019 Michel Ortega. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UITextFieldDelegate {
	//	IBOutlets
	@IBOutlet weak var tableViewCell: TableViewCell!
	@IBOutlet weak var textField: UITextField!
	
	
	
	

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		self.textField.delegate = self
		
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
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		self.view.endEditing(true)
		return false
	}
	

	//	IBActions
	
}	//	class ends

