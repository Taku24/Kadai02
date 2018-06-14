//
//  Memo.swift
//  practice2
//
//  Created by TAKU on 2018/06/14.
//  Copyright © 2018年 taku. All rights reserved.
//

import Foundation
import RealmSwift

class Memo: Object {
	@objc dynamic var content: String = ""
	@objc dynamic var date: Date = Date()
	
	convenience init(content: String, date: Date) {
		self.init()
		self.content = content
		self.date = date
	}

}
