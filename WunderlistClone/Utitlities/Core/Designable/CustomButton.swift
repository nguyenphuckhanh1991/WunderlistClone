//
//  CustomButton.swift
//  iOSTranning112017
//
//  Created by nguyen.phuc.khanh on 11/13/17.
//  Copyright © 2017 nguyen.phuc.khanh. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {
  @IBInspectable var cornerRadius: CGFloat = 23.0 {
    didSet {
      self.layer.cornerRadius  = cornerRadius
    }
  }
  @IBInspectable var borderWidth: CGFloat = 1.0 {
    didSet {
      self.layer.borderWidth = borderWidth
    }
  }
}
