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
    struct User {
        static let User                                 = "User"
        static let ProfileTableViewController           = "ProfileTableViewController"
        static let EditProfileTableViewController       = "EditProfileTableViewController"
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
    struct CustomCell {
        static let FirstProfileCell                     = "FirstProfileCell"
        static let FirstCommentTableViewCell            = "FirstCommentTableViewCell"
        static let FirstTimelineTableViewCell           = "FirstTimelineTableViewCell"
        static let CustomCommentCell                    = "CustomCommentCell"
        static let TimeLineTableViewCell                = "TimeLineTableViewCell"
        static let ChatroomCell                         = "ChatroomCell"
        static let AvaImageCollectionViewCell           = "AvaImageCollectionViewCell"
    }
    struct Notification {
        static let postStatus                           = "postStatus"
        static let postItem                             = "postItem"
    }
    struct CustomView {
        static let statusBar                            = "statusBar"
    }
    struct TabBarTitle {
        static let timeline                             = "Timeline"
        static let profile                              = "Profile"
    }
}
