//
//  AppKey.swift
//  iOSTranning112017
//
//  Created by Joy on 12/21/17.
//  Copyright © 2017 nguyen.phuc.khanh. All rights reserved.
//

import Foundation
struct AppKey {
    struct ParameterKey {
        static let username                 = "username"
        static let password                 = "password"
        static let email                    = "email"
    }
    struct HeaderKey {
        static let ContentType              = "Content-Type"
        static let Authorization            = "Authorization"
        static let Accept                   = "Accept"
    }
    struct HeaderValue {
        static let ApplicationJson          = "application/json"
    }
    struct UserDefaultKey {
        static let user                     = "user"
    }
    struct SegueIdentifier {
        static let AddItem                  = "AddItem"
        static let EditItem                 = "EditItem"
        static let ShowChecklist            = "ShowChecklist"
        static let AddChecklist             = "AddChecklist"
        static let PickIcon                 = "PickIcon"
    }
    struct LabelText {
        static let noItems                  = "(No Items)"
        static let allDone                  = "All Done!"
        static let ShowChecklist            = "ShowChecklist"
        static let AddChecklist             = "AddChecklist"
        static let PickIcon                 = "PickIcon"
        static let mark                     = "√"
        static let noneMark                 = ""
        static let viewType                 = "view is of type"
        static let remaining                = " Remaining"
        static let chooseAvaMessage         = "Personalize your Wunderlist account by uploading your photo."
    }
    struct WebViewURL {
        static let policy                   = "https://www.wunderlist.com/en/privacy-policy"
        static let terms                    = "https://www.wunderlist.com/en/terms-of-use"
    }
    struct DataModel {
        static let checklistIndex           = "ChecklistIndex"
        static let checklists               = "Checklists"
        static let plist                    = "WunderlistClone.plist"
    }
    struct ChecklistItem {
        static let text                     = "Text"
        static let checked                  = "Checked"
        static let dueDate                  = "DueDate"
        static let shouldRemind             = "ShouldRemind"
        static let itemID                   = "ItemID"
    }
    struct Checklist {
        static let name                     = "Name"
        static let items                    = "Items"
        static let iconName                 = "IconName"
    }
}


