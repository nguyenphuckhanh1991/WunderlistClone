//
//  SignInViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/4/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class SignInViewController: BaseViewController {
    
    @IBAction func backMainSignIn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func pushToForgotVC(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Navigation
    //In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "PushForgot" {
//            let controller = segue.destination as! ForgotPasswordViewController
//            self.navigationController?.pushViewController(controller, animated: true)
//        }
//    }
}
