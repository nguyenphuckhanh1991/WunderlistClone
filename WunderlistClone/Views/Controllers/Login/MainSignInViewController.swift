//
//  SignInViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/4/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class MainSignInViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = self as? UINavigationControllerDelegate
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
