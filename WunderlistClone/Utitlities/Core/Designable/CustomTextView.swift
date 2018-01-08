//
//  CustomTextView.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/8/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit
@IBDesignable class CustomTextView: UITextView {
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius  = cornerRadius
        }
    }
    @IBInspectable var borderWidth: CGFloat = 1 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}

