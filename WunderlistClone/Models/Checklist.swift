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
        self.init(name: name, iconName: "No Icon")
    }
    init(name: String, iconName: String) {
        self.name = name
        self.iconName = iconName
        super.init()
    }
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "Name") as? String
        items = (aDecoder.decodeObject(forKey: "Items") as? [ChecklistItem])!
        iconName = aDecoder.decodeObject(forKey: "IconName") as? String
        super.init()
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "Name")
        aCoder.encode(items, forKey: "Items")
        aCoder.encode(iconName, forKey: "IconName")
    }
    func countUncheckedItems() -> Int {
        var count = 0
        for item in items where !item.checked {
            count += 1
        }
        return count
    }
}
