//
//  ExtensionMainViewControllerViewArrange.swift
//  practice2
//
//  Created by TAKU on 2018/06/14.
//  Copyright © 2018年 taku. All rights reserved.
//

import Foundation
import TextFieldEffects

extension MainViewController {
	
	func settingTextForm(){
		textField = MinoruTextField(frame: CGRect(x:0, y:84, width:302, height:56))
		textField.tintColor = UIColor.white
		textField.placeholderColor = UIColor.white
		textField.placeholder = "メモを入力"

		self.view.addSubview(textField)
	}
	
}
