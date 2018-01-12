//
//  Checklist.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/5/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class Checklist: NSObject, NSCoding {
    var name: String?
    var items = [ChecklistItem]()
    var iconName: String?
    convenience init(name: String) {
        self.init(name: name, iconName: IconKey.appointments)
    }
    init(name: String, iconName: String) {
        self.name = name
        self.iconName = iconName
        super.init()
    }
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: AppKey.Checklist.name) as? String
        items = (aDecoder.decodeObject(forKey: AppKey.Checklist.items) as? [ChecklistItem])!
        iconName = aDecoder.decodeObject(forKey: AppKey.Checklist.iconName) as? String
        super.init()
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: AppKey.Checklist.name)
        aCoder.encode(items, forKey: AppKey.Checklist.items)
        aCoder.encode(iconName, forKey: AppKey.Checklist.iconName)
    }
    func countUncheckedItems() -> Int {
        var count = 0
        for item in items where !item.checked {
            count += 1
        }
        return count
    }
}
