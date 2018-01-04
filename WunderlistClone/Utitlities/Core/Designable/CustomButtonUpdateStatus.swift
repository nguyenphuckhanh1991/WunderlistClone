//
//  CustomButtonUpdateStatus.swift
//  iOSTranning112017
//
//  Created by nguyen.phuc.khanh on 11/21/17.
//  Copyright © 2017 nguyen.phuc.khanh. All rights reserved.
//

import UIKit

@IBDesignable class CustomButtonUpdateStatus: UIView {
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
