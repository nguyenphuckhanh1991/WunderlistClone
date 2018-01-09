//
//  UIViewController.swift
//  WunderlistClone
//
//  Created by Joy on 11/24/17.
//  Copyright © 2017 nguyen.phuc.khanh. All rights reserved.
//
import Foundation
import UIKit
extension UIViewController {
    static func getViewControllerFromStoryboard(_ storyboardName: String) -> UIViewController {
        let identifier = String(describing: self)
        return self.getViewControllerWithIdentifier(identifier, storyboardName: storyboardName)
    }
    static func getNavigationControllerFromStoryboard(_ storyboardName: String) -> UIViewController {
        let identifier = String(describing: self)
        return self.getViewControllerWithIdentifier(identifier, storyboardName: storyboardName)
    }
    static func getViewControllerWithIdentifier(_ identifier: String, storyboardName: String) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
}
extension UIViewController {
    func showAlertMessage(title: String, message: String, titleAction: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: titleAction, style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
