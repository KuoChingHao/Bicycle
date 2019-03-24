//
//  ViewController.swift
//  Bicycle
//
//  Created by 郭景豪 on 2019/3/24.
//  Copyright © 2019 Tank. All rights reserved.
//

import UIKit
import FirebaseAuth
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let _ = Auth.auth().currentUser {
            if let tabBarController = self.storyboard?.instantiateViewController(withIdentifier: "tabBarController") {
                self.present(tabBarController, animated: true)
            }
        }else {
            let member = UIStoryboard(name: "Member", bundle: nil)
            let loginViewController = member.instantiateViewController(withIdentifier: "loginViewController")
            self.present(loginViewController, animated: true)
        }
    }
    
    
}

