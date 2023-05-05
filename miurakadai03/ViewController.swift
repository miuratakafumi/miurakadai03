//
//  ViewController.swift
//  miurakadai03
//
//  Created by 三浦貴文 on 2023/03/11.
//

import UIKit

class ViewController: UIViewController {
//　テキストフィールドの配置
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
//　ラベルの配置
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

//  スイッチの配置
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    
//  ボタンタップ時のアクション
    @IBAction func button(_ sender: Any) {
        var number1 = Int(textField1.text ?? "") ?? 0
        var number2 = Int(textField2.text ?? "") ?? 0
        
        if switch1.isOn {
            number1 = number1 * (-1)
        }
        
        if switch2.isOn {
            number2 = number2 * (-1)
        }
        
        let sum = number1 + number2
        totalLabel.text = "\(sum)"
    }
    
}

