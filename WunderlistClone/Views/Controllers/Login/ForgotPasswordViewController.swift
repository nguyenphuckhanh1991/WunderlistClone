//
//  ForgotPasswordViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/8/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    @IBAction func backSignInVC(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
