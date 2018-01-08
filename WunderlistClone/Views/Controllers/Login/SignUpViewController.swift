//
//  SignUpViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/4/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,UIWebViewDelegate {
    @IBOutlet weak var userNameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBAction func backMainSignInVC(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func showPrivacy(_ sender: UIButton) {
        createPrivacyWV()
    }
    @IBAction func showTerm(_ sender: UIButton) {
        createTermWV()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func createPrivacyWV() {
        let myWebView:UIWebView = UIWebView(frame: CGRect(x:0, y:0, width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height))
        self.view.addSubview(myWebView)
        let myURL = URL(string: "https://www.wunderlist.com/en/privacy-policy")
        let myURLRequest = URLRequest(url: myURL!)
        myWebView.delegate = self
        myWebView.loadRequest(myURLRequest)
    }
    func createTermWV() {
        let myWebView:UIWebView = UIWebView(frame: CGRect(x:0, y:0, width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height))
        self.view.addSubview(myWebView)
        let myURL = URL(string: "https://www.wunderlist.com/en/terms-of-use")
        let myURLRequest = URLRequest(url: myURL!)
        myWebView.delegate = self
        myWebView.loadRequest(myURLRequest)
    }
}
extension SignUpViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text! as NSString
        _ = oldText.replacingCharacters(in: range, with: string) as NSString
        return true
    }
}
