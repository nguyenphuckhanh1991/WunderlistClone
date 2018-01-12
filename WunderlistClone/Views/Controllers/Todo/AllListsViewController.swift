//
//  AllListsViewController.swift
//  WunderlistClone
//
//  Created by nguyen.phuc.khanh on 1/7/18.
//  Copyright © 2018 khanh.nguyen. All rights reserved.
//

import UIKit

class AllListsViewController: UIViewController {
    var dataModel = DataModel()
    @IBOutlet weak private var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.delegate = self
        let index = dataModel.indexOfSelectedChecklist
        if index >= 0 && index < dataModel.lists.count {
            let checklist = dataModel.lists[index]
            performSegue(withIdentifier: AppKey.SegueIdentifier.ShowChecklist, sender: checklist)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.contentInset = UIEdgeInsets(top: 44, left: 0, bottom: 0, right: 0)
        tableView.reloadData()
    }
    // MARK: Functions
    func makeCell(for tableView: UITableView) -> UITableViewCell {
        let cellIdentifier = Storyboard.CellIdentifier.cell
        if let cell =
            tableView.dequeueReusableCell(withIdentifier: cellIdentifier) {
            return cell
        } else {
            return UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == AppKey.SegueIdentifier.ShowChecklist {
            if let controller = segue.destination as? ChecklistViewController {
                controller.checklist = sender as? Checklist
            }
        } else if segue.identifier == AppKey.SegueIdentifier.AddChecklist {
            if let navigationController = segue.destination as? UINavigationController {
                let controller = navigationController.topViewController as? ListDetailViewController
                controller?.delegate = self
                controller?.checklistToEdit = nil
            }
        }
    }
}
// MARK: UITableViewDataSource
extension AllListsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.lists.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = makeCell(for: tableView)
        let checklist = dataModel.lists[indexPath.row]
        cell.textLabel!.text = checklist.name
        cell.accessoryType = .detailDisclosureButton
        let count = checklist.countUncheckedItems()
        if checklist.items.count == 0 {
            cell.detailTextLabel!.text = AppKey.LabelText.noItems
        } else if count == 0 {
            cell.detailTextLabel!.text = AppKey.LabelText.allDone
        } else {
            cell.detailTextLabel!.text = "\(count) App"
        }
        cell.imageView?.image = UIImage(named: checklist.iconName!)
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        dataModel.lists.remove(at: indexPath.row)
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        if let navigationController = storyboard!.instantiateViewController(
            withIdentifier: Storyboard.NavigationControllerIdentifier.listDetailNavigationController)
            as? UINavigationController {
            if let controller = navigationController.topViewController
                as? ListDetailViewController {
                controller.delegate = self
                let checklist = dataModel.lists[indexPath.row]
                controller.checklistToEdit = checklist
                present(navigationController, animated: true, completion: nil)
            }
        }
    }
}
// MARK: UITableViewDelegate
extension AllListsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dataModel.indexOfSelectedChecklist = indexPath.row
        let checklist = dataModel.lists[indexPath.row]
        performSegue(withIdentifier: AppKey.SegueIdentifier.ShowChecklist, sender: checklist)
    }
}
// MARK: ListDetailViewControllerDelegate
extension AllListsViewController: ListDetailViewControllerDelegate {
    func listDetailViewControllerDidCancel(_ controller: ListDetailViewController) {
        dismiss(animated: true, completion: nil)
    }
    func listDetailViewController(_ controller: ListDetailViewController, didFinishAdding checklist: Checklist) {
        dataModel.lists.append(checklist)
        dataModel.sortChecklists()
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    func listDetailViewController(_ controller: ListDetailViewController, didFinishEditing checklist: Checklist) {
        dataModel.sortChecklists()
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
}
// MARK: UINavigationControllerDelegate
extension AllListsViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if viewController === self {
            dataModel.indexOfSelectedChecklist = -1
        }
    }
}

