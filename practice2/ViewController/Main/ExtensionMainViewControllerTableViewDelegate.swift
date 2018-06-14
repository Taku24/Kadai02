//
//  ExtensionMainViewControllerTableViewDelegate.swift
//  practice2
//
//  Created by TAKU on 2018/06/14.
//  Copyright © 2018年 taku. All rights reserved.
//

import Foundation

extension MainViewController: UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 80
	}
	
}
