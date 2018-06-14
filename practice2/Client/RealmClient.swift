//
//  RealmClient.swift
//  practice2
//
//  Created by TAKU on 2018/06/14.
//  Copyright © 2018年 taku. All rights reserved.
//

import Foundation
import RealmSwift

class RealmClient {
	
	let realm = try! Realm()
	
	func saveNewMemo(memo: Memo){
		try! realm.write {
			realm.add(memo, update: false)
		}
	}
	
	func deleteMemo(memo: Memo) {
		try! realm.write {
			realm.delete(memo)
		}
	}
	
	func loadAllMemos() -> Array<Memo>{
		return Array(realm.objects(Memo.self))
	}
	
}
