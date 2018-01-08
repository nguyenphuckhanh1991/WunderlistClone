//
//  SignUpViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/4/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBAction func backMainSignInVC(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
