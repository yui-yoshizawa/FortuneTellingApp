//
//  ViewController.swift
//  占いApp
//
//  Created by 吉澤優衣 on 2019/08/07.
//  Copyright © 2019 吉澤優衣. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var datePicker: UIDatePicker!    // 1文字目小文字にすべきだったと思う。
    
    @IBOutlet weak var numLabel: UILabel!

    @IBOutlet weak var resultTextView: UITextView!
    
    // ここに関数つくって下で呼び出す
    
    var yearText = ""
    var monthText = ""
    var dateText = ""
    
    
    
    // ------------------------------------------------------------------

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    
    // 【占うボタンを押した後の処理】についてだよー
    func checkResult() {
        
        // 1. 年/月/日 を取得。それぞれの最後の文字を取得。
        // 他の方法のが良かった説。とりあえずこれで。
        
        // datePicker の値を yyyymmddのフォーマットで取得。
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        // print("\(formatter.string(from: datePicker.date))")
        
        let yyyymmdd = "\(formatter.string(from: datePicker.date))"
        // print(yyyymmdd)
        
        
        // 「年」の値を取得
        let year = yyyymmdd.prefix(4)    // .prefit(n) で先頭からn番目までの文字を取得
        let yearType = year.suffix(1)    // 最後の文字を取得。0~9 が入る。
        
        // ケース
        switch yearType {
        case "0":
            yearText = "海"
        case "1":
            yearText = "山"
        case "2":
            yearText = "湖"
        case "3":
            yearText = "木"
        case "4":
            yearText = "森"
        case "5":
            yearText = "太陽"
        case "6":
            yearText = "月"
        case "7":
            yearText = "花"
        case "8":
            yearText = "草"
        case "9":
            yearText = "雲"
        default:
            print("エラー")
            return
        }
    
        
        // 「月」の値を取得
        let month =  yyyymmdd[yyyymmdd.index(yyyymmdd.startIndex, offsetBy: 4)..<yyyymmdd.index(yyyymmdd.startIndex, offsetBy: 6)]  // 6,7文字目を取得
        let monthType = month.suffix(1)
        
        // ケース
        switch monthType {
        case "0":
            monthText = "光"
        case "1":
            monthText = "闇"
        case "2":
            monthText = "火"
        case "3":
            monthText = "水"
        case "4":
            monthText = "風"
        case "5":
            monthText = "雷"
        case "6":
            monthText = "天"
        case "7":
            monthText = "氷"
        case "8":
            monthText = "土"
        case "9":
            monthText = "無"
        default:
            print("エラー")
            return
        }
        
        
        
        
        // 「日」の値を取得
        let date = yyyymmdd.suffix(2)
        let dateType = date.suffix(1)
        // ケース
        switch dateType {
        case "0":
            dateText = "不思議な雰囲気"
        case "1":
            dateText = "粘り強さ"
        case "2":
            dateText = "意思の強さ"
        case "3":
            dateText = "明るい雰囲気"
        case "4":
            dateText = "独特の雰囲気"
        case "5":
            dateText = "芯の強さ"
        case "6":
            dateText = "神がかっているオーラ"
        case "7":
            dateText = "天才のオーラ"
        case "8":
            dateText = "経験を糧にする意思"
        case "9":
            dateText = "自分を貫き通す意思"
        default:
            print("エラー")
            return
        }
        
        
        
        // 4. 血液型
        
        
        // 5. 好きな数
        
        // 6. 呼び出し
        
        resultTextView.text = "あなたは\(yearText)に愛されています。属性は「\(monthText)」です。あなたからは\(dateText)が感じられます。"
        
        
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

