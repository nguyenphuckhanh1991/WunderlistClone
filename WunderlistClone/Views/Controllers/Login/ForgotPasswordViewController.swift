//
//  ForgotPasswordViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/8/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    @IBOutlet weak private var emailInput: UITextField!
    @IBAction func backSignInVC(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
// MARK: - UITextFieldDelegate
extension ForgotPasswordViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text! as NSString
        _ = oldText.replacingCharacters(in: range, with: string) as NSString
        return true
    }
}
