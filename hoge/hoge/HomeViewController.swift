//
//  ViewController.swift
//  hoge
//
//  Created by 山田 咲太朗 on 2019/02/16.
//  Copyright © 2019 hoge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    //let TODO = []

    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var hobby: UITextField!
    @IBOutlet weak var from: UITextField!
    @IBOutlet weak var tapActionButton: UIButton!
    var ID:Int = 0
    //UserDefaltsを参照する
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let value1 = userDefaults.string(forKey:"Name"){
         self.name.text = value1
        }
    
        if let value2 = userDefaults.string(forKey:"Gender"){
            self.gender.text = value2
        }
        if let value3 = userDefaults.string(forKey:"Hobby"){
            self.hobby.text = value3
        }
        if let value4 = userDefaults.string(forKey:"From"){
            self.from.text = value4
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func move_pages(_ sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        let listview = storyboard.instantiateViewController(withIdentifier: "listview")
        self.present(listview, animated: true, completion: nil)
    }
    
    // 保存ボタン
    @IBAction func save(_ sender: Any) {
        userDefaults.set(self.name.text,forKey:"Name")
        userDefaults.set(self.gender.text,forKey:"Gender")
        userDefaults.set(self.hobby.text,forKey:"Hobby")
        userDefaults.set(self.from.text,forKey:"From")
        userDefaults.set(self.ID,forKey:"ID")
        userDefaults.synchronize()
        
        let title = "保存しました"
        let message = "友達に教えよう♩"
        let okText = "閉じる"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle : UIAlertController.Style.actionSheet)
        //OKボタン
        let okayButton = UIAlertAction(title : okText, style: UIAlertAction.Style.cancel, handler:nil)
        alert.addAction(okayButton)
        
        present(alert,animated: true, completion:nil)
    }
        //デバッグ用
        
            /*
         {
         "Name": "hogehoge",
         "Gender": "F"
         }
 */
        // ポップアップ
    
        
    }
    
    



