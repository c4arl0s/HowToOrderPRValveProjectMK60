//
//  HowToOrderPressureRegulatorValveTableViewController.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import Foundation
import UIKit

protocol HowToOrderPressureRegulatorValveTableViewControllerDelegate {
    func updateOptionLabel(dataToPass: String, indexPathPassed: IndexPath)
}

class HowToOrderPressureRegulatorValveTableViewController: UITableViewController {
    var passedArrayFromFTVC: [String] = []
    // Create the delegate variable
    var delegate: HowToOrderPressureRegulatorValveTableViewControllerDelegate?
    var indexPathPassed: IndexPath!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passedArrayFromFTVC.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellSelection", for: indexPath) as! OptionTableViewCell
        let optionSelected = passedArrayFromFTVC[indexPath.row]
        cell.showsReorderControl = true
        cell.textLabel?.text = optionSelected
        cell.detailTextLabel?.text = optionSelected
        return cell
    }

    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .none
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let optionSelected = passedArrayFromFTVC[indexPath.row]
        // When is selected, senf the optionSelected and indexPathPassed
        self.delegate?.updateOptionLabel(dataToPass: optionSelected, indexPathPassed: indexPathPassed)
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
        }
        
    }

}
