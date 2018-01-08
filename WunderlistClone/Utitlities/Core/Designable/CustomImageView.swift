//
//  CustomImageView.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/4/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit
@IBDesignable class CustomImageView: UIImageView {
    @IBInspectable var cornerRadius: CGFloat = 5.0 {
        didSet {
            self.layer.cornerRadius  = cornerRadius
        }
    }
}
