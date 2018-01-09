//
//  ChecklistViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/5/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class ChecklistViewController: UIViewController {
    var checklist: Checklist!
    @IBOutlet weak private var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = checklist.name
    }
    @IBAction func popToAllListVC(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // MARK: Function
    func configureCheckmark(for cell: UITableViewCell, with item: ChecklistItem) {
        if let view = cell.viewWithTag(1001) {
            if let label = view as? UILabel {
                if item.checked {
                    label.text = "√"
                } else {
                    label.text = ""
                }
                label.textColor = view.tintColor
            } else {
                print ("view is of type \(view.classForCoder)")
            }
        }
    }
    func configureText(for cell: UITableViewCell, with item: ChecklistItem) {
        if let view = cell.viewWithTag(1000) {
            if let label = view as? UILabel {
                label.text = "\(item.itemID!) - " + "\(item.text!)"
            } else {
                print ("view is of type \(view.classForCoder)")
            }
        }
    }
    @IBAction func presentAddItem(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddItem" {
            if let navigationController = segue.destination as? UINavigationController {
                if let controller = navigationController.topViewController as? ItemDetailViewController {
                    controller.delegate = self

                }
            }
        } else if segue.identifier == "EditItem" {
            if let navigationController = segue.destination as? UINavigationController {
                if let controller = navigationController.topViewController as? ItemDetailViewController {
                    controller.delegate = self
                    if let indexPath = tableView.indexPath(for: (sender as? UITableViewCell)!) {
                        controller.itemToEdit = checklist.items[indexPath.row]
                    }
                }
            }
        }
    }
}
// MARK: UITableViewDataSource
extension ChecklistViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checklist.items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "ChecklistItem", for: indexPath)
        let item = checklist.items[indexPath.row]
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        checklist.items.remove(at: indexPath.row)
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
}
// MARK: UITableViewDelegate
extension ChecklistViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = checklist.items[indexPath.row]
            item.toggleChecked()
            configureCheckmark(for: cell, with: item)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
extension ChecklistViewController: ItemDetailViewControllerDelegate {
    func itemDetailViewController(_ controller: ItemDetailViewController, didFinishEditing item: ChecklistItem) {
        if let index = checklist.items.index(of: item) {
            let indexPath = IndexPath(row: index, section: 0)
            if let cell = tableView.cellForRow(at: indexPath) {
                configureText(for: cell, with: item)
            }
        }
        dismiss(animated: true, completion: nil)
    }
    func itemDetailViewControllerDidCancel(_ controller: ItemDetailViewController) {
        dismiss(animated: true, completion: nil)
    }
    func itemDetailViewController(_ controller: ItemDetailViewController, didFinishAdding item: ChecklistItem) {
        let newRowIndex = checklist.items.count
        checklist.items.append(item)
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .automatic)
        dismiss(animated: true, completion: nil)
    }
}
