//
//  SignInViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/4/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class SignInViewController: BaseViewController {
    @IBOutlet weak var signInButton: CustomButton!
    @IBOutlet weak private var emailInput: UITextField!
    @IBOutlet weak private var passwordInput: UITextField!
    @IBAction func backMainSignIn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func signInTapped(_ sender: UIButton) {
        doLogin()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    private func doLogin()  {
        guard let email = emailInput.text, let password = passwordInput.text else {
            return
        }
        if validateInputField(email: email, password: password) {
            showMainVC()
        }
    }
    private func showMainVC() {
        DispatchQueue.main.async {
            guard let mainAppVC = UIStoryboard.init(name: "Todo", bundle: nil).instantiateInitialViewController() else {return}
            self.present(mainAppVC, animated: true, completion: nil)
        }
    }
}
extension SignInViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text!
        let stringRange = Range(range, in:oldText)
        let newText = oldText.replacingCharacters(in: stringRange!, with: string)
        if newText.isEmpty {
            signInButton.isEnabled = false
        } else {
            signInButton.isEnabled = true
        }
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailInput {
            passwordInput.becomeFirstResponder()
        } else {
            view.endEditing(true)
        }
        return false
    }
}
extension SignInViewController {
    func validateInputField(email: String, password: String) -> Bool {
        var flag = false
        if email.isEmpty || password.isEmpty {
            showAlertMessage(title: InputResult.LoginError.titleWrongInputType, message: InputResult.LoginError.messageMustFilled, titleAction: InputResult.LoginError.actionTitle)
            flag = false
        }
        if email.count > 6 && password.count > 6 {
            if email == emailInput.text && password == passwordInput.text {
                flag = true
            } else {
                showAlertMessage(title: InputResult.LoginError.titleLoginFail, message: InputResult.LoginError.messageInvalid, titleAction: InputResult.LoginError.actionTitle)
            }
        } else {
            showAlertMessage(title: InputResult.LoginError.titleWrongInputType, message: InputResult.LoginError.messageMustGreater, titleAction: InputResult.LoginError.actionTitle)
        }
        return flag
    }
}
