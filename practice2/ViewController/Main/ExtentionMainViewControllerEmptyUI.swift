//
//  ExtentionMainViewControllerEmptyDelegate.swift
//  practice2
//
//  Created by TAKU on 2018/06/14.
//  Copyright © 2018年 taku. All rights reserved.
//

import Foundation

extension MainViewController: DZNEmptyDataSetSource, DZNEmptyDataSetDelegate {
	
	func title(forEmptyDataSet scrollView: UIScrollView!) -> NSAttributedString! {
		return NSAttributedString(string: "メモがありません。\n何かメモを追加しましょう。")
	}
	
}
