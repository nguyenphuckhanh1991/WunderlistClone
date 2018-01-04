//
//  CustomTextField.swift
//  iOSTranning112017
//
//  Created by nguyen.phuc.khanh on 11/13/17.
//  Copyright © 2017 nguyen.phuc.khanh. All rights reserved.
//

import UIKit
@IBDesignable class CustomTextField: UITextField {
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
  @IBInspectable var placeHolderColor: UIColor? {
    get {
      return self.placeHolderColor
    }
    set {
      self.attributedPlaceholder = NSAttributedString(string: self.placeholder != nil ? self.placeholder!: "", attributes: [NSAttributedStringKey.foregroundColor: newValue!])
    }
  }
}
