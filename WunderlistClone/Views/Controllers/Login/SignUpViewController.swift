//
//  SignUpViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/4/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var avaImageView: CustomImageView!
    @IBOutlet weak private var userNameInput: UITextField!
    @IBOutlet weak private var emailInput: UITextField!
    @IBOutlet weak private var passwordInput: UITextField!
    @IBAction func backMainSignInVC(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func showPrivacy(_ sender: UIButton) {
        createPrivacyWV()
    }
    @IBAction func showTerm(_ sender: UIButton) {
        createTermWV()
    }
    @IBAction func chooseAva(_ sender: UIButton) {
        showActionSheet(title: AppKey.LabelText.noneMark, message: AppKey.LabelText.chooseAvaMessage)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func createPrivacyWV() {
        let myWebView: UIWebView = UIWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        self.view.addSubview(myWebView)
        let myURL = URL(string: AppKey.WebViewURL.policy)
        let myURLRequest = URLRequest(url: myURL!)
        myWebView.delegate = self
        myWebView.loadRequest(myURLRequest)
    }
    func createTermWV() {
        let myWebView: UIWebView = UIWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        self.view.addSubview(myWebView)
        let myURL = URL(string: AppKey.WebViewURL.terms)
        let myURLRequest = URLRequest(url: myURL!)
        myWebView.delegate = self
        myWebView.loadRequest(myURLRequest)
    }
    func showActionSheet(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction.init(title: InputResult.ActionSheet.chooseAvatar, style: .default, handler: {_ in
            self.choosePhoto()
        }))
        alert.addAction(UIAlertAction(title: InputResult.ActionSheet.takePhoto, style: .default, handler: {_ in
            self.takePhoto()
        }))
        alert.addAction(UIAlertAction(title: InputResult.ActionSheet.cancel, style: .cancel, handler: { (_) -> Void in
            alert.dismiss(animated: true, completion: nil)
        }))
        present(alert, animated: true, completion: nil)
    }
    private func takePhoto() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    private func choosePhoto() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
}
// MARK: - UITextFieldDelegate
extension SignUpViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text! as NSString
        _ = oldText.replacingCharacters(in: range, with: string) as NSString
        return true
    }
}
// MARK: - UIImagePickerControllerDelegate
extension SignUpViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.avaImageView.image = image
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}

