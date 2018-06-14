//
//  ExtensionMainViewControllerTablwViewDataSourceDelegate.swift
//  practice2
//
//  Created by TAKU on 2018/06/14.
//  Copyright © 2018年 taku. All rights reserved.
//

import Foundation

extension MainViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as UITableViewCell
		let memo = list[indexPath.row]
		cell.textLabel?.text = memo.content + "\n" + "created:" + createDateStr(date: memo.date)
		cell.textLabel?.numberOfLines = 3
		return cell
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return list.count
	}
	
	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
		realmClient.deleteMemo(memo: list[indexPath.row])
		list.remove(at: indexPath.row)
		tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
	}
	
	func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
		return true
	}
	
	func createDateStr(date: Date) -> String{
		let formatter = DateFormatter()
		formatter.dateStyle = .short
		formatter.timeStyle = .short
		formatter.locale = Locale(identifier: "ja_JP")
		
		return formatter.string(from:date)
	}
	
}
