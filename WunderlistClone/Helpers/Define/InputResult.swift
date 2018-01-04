//
//  InputResult.swift
//  iOSTranning112017
//
//  Created by Joy on 12/21/17.
//  Copyright © 2017 nguyen.phuc.khanh. All rights reserved.
//

import Foundation

struct InputResult {
    struct LoginError {
        static let titleWrongInputType      = "Wrong input format"
        static let titleLoginFail           = "Username or password are incorrect."
        static let messageInvalid           = "Invalid email format. Please input a correct email."
        static let messageMustFilled        = "Username and Password must be filled."
        static let messageMustGreater       = "Username and Password must be greater than 6 chacracters."
        static let messageLoginFail         = "Username or password are incorrect."
        static let actionTitle              = "Close"
    }
    struct CreateChatroomError {
        static let wrongResponseDataTitle   = "Data response is not correct!"
        static let wrongResponseDataMessage = "Please try again!"
        static let actionTitle              = "Close"
    }
    struct ActionSheet {
        static let pickPhoto                = "Pick Photo"
        static let takePhoto                = "Take Photo"
        static let cancel                   = "Cancel"
    }
    struct MessageText {
        static let titleMessage             = "Missing information!"
        static let nameMessage              = "Name must be filled!"
        static let emailMessage             = "Email must be filled!"
        static let phoneMessage             = "Phone must be filled!"
        static let actionTitle              = "Close"
    }
}
