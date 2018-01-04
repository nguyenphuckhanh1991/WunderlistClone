//
//  CustomSearchBar.swift
//  iOSTranning112017
//
//  Created by Joy on 11/28/17.
//  Copyright © 2017 nguyen.phuc.khanh. All rights reserved.
//

import UIKit

@IBDesignable class CustomSearchBar: UISearchBar {
  @IBInspectable var borderColor: UIColor = UIColor.clear {
    didSet {
      self.layer.borderColor = borderColor.cgColor
    }
  }
  @IBInspectable var borderWidth: CGFloat = 1 {
    didSet {
      self.layer.borderWidth = borderWidth
    }
  }
}
