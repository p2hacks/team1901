//
//  Popup.swift
//  hoge
//
//  Created by codepro on 2019/02/17.
//  Copyright © 2019年 hoge. All rights reserved.
//

import Foundation

class Popup: {
    //ポップアップ関数
    var alert: UIAlertController!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // 外側をタップで非表示
        alert = UIAlertController(title: "Alert", message: "Tap outside of alert and dismiss", preferredStyle: .alert)
        present(alert, animated: true, completion: {
            self.alert.view.superview?.isUserInteractionEnabled = true
            self.alert.view.superview?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.closeAlert)))
        })
    }
    
    @objc func closeAlert() {
        alert.dismiss(animated: true, completion: nil)
        alert = nil
    }
}
