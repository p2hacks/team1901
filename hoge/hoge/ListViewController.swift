//
//  ListViewController.swift
//  hoge
//
//  Created by codepro on 2019/02/17.
//  Copyright © 2019年 hoge. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var idnumber = ["ID:1","ID:2","ID:3"]
    var name = ["田中太郎", "山田花子","鈴木二郎"]
    var gender  = ["男","女","男"]
    var hobby = ["読書","散歩","野球"]
    var from = ["函館","札幌","青森"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return idnumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "hogehoge", for: indexPath)
        cell.textLabel?.text = "\(idnumber[indexPath.row]) \(name[indexPath.row])"
        
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    /*
    // ヘッダー
    @IBOutlet weak var header_Label: UILabel!

    // ヘッダー名前
    @IBOutlet weak var header_name: UILabel!
    
    @IBOutlet weak var name_paper: UIButton!
    
    
    @IBOutlet weak var move_button: UIButton!
    */
    
    // ラベル
    let lavel_alpha = Nums()
    @IBOutlet weak var label1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
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
                                                            //保存場所
                                                            //idnumber, nameの先頭に追加
                                                            self.idnumber.append("ID:6")
                                                            self.name.append("鈴木三郎")
                                                            self.gender.append("男")
                                                            self.hobby.append("野球")
                                                            self.from.append("旭川")
                                                            
                                                            self.tableView.reloadData()
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
