//
//  ViewController.swift
//  practice2
//
//  Created by TAKU on 2018/06/14.
//  Copyright © 2018年 taku. All rights reserved.
//

import UIKit
import TextFieldEffects

class MainViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	var list:[Memo] = []
	var textField = MinoruTextField()
	let cellName = "cell"
	let realmClient = RealmClient()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellName)
		tableView.delegate = self
		tableView.dataSource = self
		tableView.emptyDataSetSource = self
		tableView.emptyDataSetDelegate = self
		
		list = realmClient.loadAllMemos()
		textField.resignFirstResponder()
		settingTextForm()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		textField.resignFirstResponder()
	}
	
	@IBAction func addMemo(_ sender: UIButton) {
		textField.resignFirstResponder()
		guard let text = textField.text else { return }
		if !(text.isEmpty) {
			let memo = Memo(content: text, date: Date())
			list.append(memo)
			realmClient.saveNewMemo(memo: memo)
			tableView.reloadData()
			textField.text = String()
		}
	}
	
	@IBAction func startEdit(_ sender: UIBarButtonItem) {
		if tableView.isEditing {
			sender.title = "編集"
		} else {
			sender.title = "完了"
		}
		tableView.setEditing(!(tableView.isEditing), animated: true)
		tableView.reloadData()
	}
}

