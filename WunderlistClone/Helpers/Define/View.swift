//
//  View.swift
//  iOSTranning112017
//

//  Created by Joy on 12/21/17.
//  Copyright © 2017 nguyen.phuc.khanh. All rights reserved.
//

import Foundation

struct Storyboard {
    struct Main {
        static let Main                                 = "Main"
        static let StartViewController                  = "StartViewController"
        static let MainViewController                   = "MainViewController"
    }
    struct Todo {
        static let Todo                                 = "Todo"
        static let AllListsViewController               = "AllListsViewController"
        static let ChecklistViewController              = "ChecklistViewController"
        static let IconPickerViewController             = "IconPickerViewController"
        static let ItemDetailViewController             = "ItemDetailViewController"
        static let ListDetailViewController             = "ListDetailViewController"
    }
    struct Login {
        static let Login                                = "Login"
        static let signInViewController                 = "SignInViewController"
        static let signUpViewController                 = "SignUpViewController"
        static let logInNavigation                      = "SignInNavigation"
    }
    struct Chatroom {
        static let Chatroom                             = "Chatroom"
        static let createChatroomViewController         = "CreateChatroomViewController"
        static let avatarImageViewController            = "AvatarImageViewController"
    }
    struct Timeline {
        static let Timeline                             = "Timeline"
        static let timelineTableViewController          = "TimelineTableViewController"
        static let timelineCommentContainerView         = "TimelineCommentContainerView"
        static let timelineCommentTableViewController   = "TimelineCommentTableViewController"
        static let postViewController                   = "PostViewController"
    }
    struct BaseView {
        static let BaseNavigationController             = "BaseNavigationController"
        static let BaseTabbarController                 = "BaseTabbarController"
        static let BaseViewController                   = "BaseViewController"
    }
    struct Notification {
        static let postStatus                           = "postStatus"
        static let postItem                             = "postItem"
    }
    struct CustomView {
        static let statusBar                            = "statusBar"
    }
}
