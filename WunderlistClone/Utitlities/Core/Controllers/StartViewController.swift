//
//  StartViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/4/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class StartViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.checkApp()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
//    private func checkApp() {
//        if !isLogged() {
//            self.perform(#selector(StartViewController.gotoLogin), with: nil, afterDelay: 0)
//        } else {
//            self.perform(#selector(StartViewController.gotoMainApp), with: nil, afterDelay: 0)
//        }
//    }
//    func isLogged() -> Bool {
//        guard UserDefaults.standard.value(forKey: AppKey.TokenKey.token) != nil else {return false}
//        return true
//    }
//    func gotoLogin() {
//        let userLoginVC = SignInViewController.getViewControllerFromStoryboard(Storyboard.Login.Login)
//        self.present(userLoginVC, animated: true, completion: nil)
//    }
//    func gotoMainApp() {
//        self.mainTabBarViewController?.setupMainApp()
//    }
}
