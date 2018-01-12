//
//  IconPickerViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/8/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

protocol IconPickerViewControllerDelegate: class {
    func iconPicker(_ picker: IconPickerViewController, didPick iconName: String)
}
class IconPickerViewController: UIViewController {
    @IBOutlet weak private var tableView: UITableView!
    weak var delegate: IconPickerViewControllerDelegate?
    let icons = [IconKey.noIcon, IconKey.appointments, IconKey.birthdays, IconKey.chores, IconKey.drinks, IconKey.folder, IconKey.groceries, IconKey.inbox, IconKey.photos, IconKey.trips]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
// MARK: UITableViewDataSource
extension IconPickerViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return icons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.CellIdentifier.iconCell, for: indexPath)
        let iconName = icons[indexPath.row]
        cell.textLabel?.text = iconName
        cell.imageView?.image = UIImage(named: iconName)
        return cell
    }
}
// MARK: UITableViewDelegate
extension IconPickerViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let delegate = delegate {
            let iconName = icons[indexPath.row]
            delegate.iconPicker(self, didPick: iconName)
        }
    }
}
