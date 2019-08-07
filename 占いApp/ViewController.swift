//
//  ViewController.swift
//  占いApp
//
//  Created by 吉澤優衣 on 2019/08/07.
//  Copyright © 2019 吉澤優衣. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    @IBOutlet weak var numLabel: UILabel!

    @IBOutlet weak var resultTextView: UITextView!
    
    // ここに関数つくって下で呼び出す
    
    
    
    
    
    // ------------------------------------------------------------------

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    
    // 【占うボタンを押した後の処理】についてだよー
    func checkResult() {
        
        // 1. yyyy 取得
        
        
        
        // 2. mm
        
        // 3. dd
        
        // 4. 血液型
        
        // 5. 好きな数
        
        // 6. 呼び出し
        
        
    }
    
    
    
    // 【スライダー】について書くよー
    @IBAction func numSlider(_ sender: UISlider) {
        let sliderValue:Int = Int(sender.value)    // 少数がうざいので、整数に変更
        numLabel.text = String(sliderValue)    // 値をラベルに表示
    }
    
    // 【占うボタンを押した後】の処理だよ
    @IBAction func actionButton(_ sender: Any) {
        checkResult()
    }
    

}

