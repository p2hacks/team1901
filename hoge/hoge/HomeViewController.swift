//
//  ViewController.swift
//  hoge
//
//  Created by 山田 咲太朗 on 2019/02/16.
//  Copyright © 2019 hoge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var hobby: UITextField!
    @IBOutlet weak var from: UITextField!
    @IBOutlet weak var tapActionButton: UIButton!
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
    
    @IBAction func save(_ sender: Any) {
        userDefaults.set(self.name.text,forKey:"Name")
        userDefaults.set(self.gender.text,forKey:"Gender")
        userDefaults.set(self.hobby.text,forKey:"Hobby")
        userDefaults.set(self.from.text,forKey:"From")
        userDefaults.synchronize()
        //デバッグ用
        
        
    }
    
    

}

