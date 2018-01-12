//
//  ChecklistItem.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/5/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import Foundation
import UserNotifications

class ChecklistItem: NSObject, NSCoding {
    var dueDate = Date()
    var shouldRemind = false
    var itemID: Int?
    var text: String?
    var checked = false
    func toggleChecked() {
        checked = !checked
    }
    override init() {
        itemID = DataModel.nextChecklistItemID()
        super.init()
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(text, forKey: AppKey.ChecklistItem.text)
        aCoder.encode(checked, forKey: AppKey.ChecklistItem.checked)
        aCoder.encode(dueDate, forKey: AppKey.ChecklistItem.dueDate)
        aCoder.encode(shouldRemind, forKey: AppKey.ChecklistItem.shouldRemind)
        aCoder.encode(itemID, forKey: AppKey.ChecklistItem.itemID)
    }
    required init?(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObject(forKey: AppKey.ChecklistItem.text) as? String
        checked = aDecoder.decodeBool(forKey: AppKey.ChecklistItem.checked)
        dueDate = (aDecoder.decodeObject(forKey: AppKey.ChecklistItem.dueDate) as? Date)!
        shouldRemind = aDecoder.decodeBool(forKey: AppKey.ChecklistItem.shouldRemind)
        itemID = aDecoder.decodeInteger(forKey: AppKey.ChecklistItem.itemID)
        super.init()
    }
    func scheduleNotification() {
        removeNotification()
        if shouldRemind && dueDate > Date() {
            let content = UNMutableNotificationContent()
            content.title = "Reminder:"
            content.body = text!
            content.sound = UNNotificationSound.default()
            let calendar = Calendar(identifier: .gregorian)
            let components = calendar.dateComponents([.month, .day, .hour, .minute], from: dueDate)
            let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
            let request = UNNotificationRequest(identifier: "\(String(describing: itemID))", content: content, trigger: trigger)
            let center = UNUserNotificationCenter.current()
            center.add(request)
            print("Scheduled notification \(request) for itemID \(String(describing: itemID))")
        }
    }
    func removeNotification() {
        let center = UNUserNotificationCenter.current()
        center.removePendingNotificationRequests(withIdentifiers: ["\(String(describing: itemID))"])
    }
    deinit {
        removeNotification()
    }
}
