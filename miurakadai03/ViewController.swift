//
//  ViewController.swift
//  miurakadai03
//
//  Created by 三浦貴文 on 2023/03/11.
//

import UIKit

class ViewController: UIViewController {
    // テキストフィールドの配置
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    // ラベルの配置
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    // スイッチの配置
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    
    // ボタンタップ時のアクション
    @IBAction func button(_ sender: Any) {
        let number1 = Int(textField1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0

        let signedNumber1: Int
        if switch1.isOn {
            signedNumber1 = -number1
        } else {
            signedNumber1 = number1
        }

        let signedNumber2: Int
        if switch2.isOn {
            signedNumber2 = -number2
        } else {
            signedNumber2 = number2
        }
        
        label1.text = "\(signedNumber1)"
        label2.text = "\(signedNumber2)"
        
        totalLabel.text = "\(signedNumber1 + signedNumber2)"
    }
}
