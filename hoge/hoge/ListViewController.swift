//
//  ListViewController.swift
//  hoge
//
//  Created by codepro on 2019/02/17.
//  Copyright © 2019年 hoge. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    /*
    // ヘッダー
    @IBOutlet weak var header_Label: UILabel!

    // ヘッダー名前
    @IBOutlet weak var header_name: UILabel!
    
    @IBOutlet weak var name_paper: UIButton!
    
    
    @IBOutlet weak var move_button: UIButton!
    */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func move_pages(_ sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        let setting = storyboard.instantiateViewController(withIdentifier: "setting")
        self.present(setting, animated: true, completion: nil)
    }
    
    // 名刺追加ボタンアクション
    @IBAction func addFriends(_ sender: Any) {
        //新しい
        let popalert:UIAlertController = UIAlertController(title:"名刺登録",
                                                        message: "ともだちのIDを入力してね",
                                                        preferredStyle: UIAlertController.Style.alert)
        let cancelAction:UIAlertAction = UIAlertAction(title: "キャンセル",
                                                       style: UIAlertAction.Style.cancel,
                                                       handler:{
                                                        (action:UIAlertAction!) -> Void in
        })
        let defaultAction:UIAlertAction = UIAlertAction(title: "OK",
                                                        style: UIAlertAction.Style.default,
                                                        handler:{
                                                            (action:UIAlertAction!) -> Void in
        })
        popalert.addAction(cancelAction)
        popalert.addAction(defaultAction)
        //textfiledの追加
        popalert.addTextField(configurationHandler: {(code:UITextField!) -> Void in
            
            code.placeholder = "登録するIDを入力します"
            //テンキーの表示
            code.keyboardType = .numberPad
            // 枠線のスタイルを設定
            code.borderStyle = .roundedRect
            // 改行ボタンの種類を設定
            code.returnKeyType = .done
            
            
        })
        
        present(popalert, animated: true, completion: nil)
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
