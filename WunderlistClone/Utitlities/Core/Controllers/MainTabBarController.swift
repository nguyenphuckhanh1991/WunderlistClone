//
//  MainTabBarController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/4/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    override func viewWillAppear(_ animated: Bool) {
    }
    override func viewDidAppear(_ animated: Bool) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // setup
        self.setupStartApp()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    private func setupView() {
    }
    private func setupStartApp() {
//        let startViewController = StartViewController.getViewControllerFromStoryboard(Storyboard.Main.Main)
        // set list childs controller to tabbar
    }
    func setupMainApp() {
//        // Timeline
//        let navigationTimeline = UIStoryboard(name: Storyboard.Timeline.Timeline, bundle: nil).instantiateInitialViewController()!
//        // User
//        let navigationUser = UIStoryboard(name: Storyboard.User.User, bundle: nil).instantiateInitialViewController()!
//        //let tabBarItemUser =  UITabBarItem(title: Storyboard.TabBarTitle.profile, image: #imageLiteral(resourceName: "edit_profile"), tag: 20)
//        //navigationUser.tabBarItem = tabBarItemUser
//        // set list childs controller to tabbar
//        let controllers = [navigationTimeline, navigationUser]
//        self.viewControllers = controllers
//        self.hideTabbar(hide: false)
    }
}
