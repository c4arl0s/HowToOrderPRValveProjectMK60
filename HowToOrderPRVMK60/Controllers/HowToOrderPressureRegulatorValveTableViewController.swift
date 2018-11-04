//
//  HowToOrderPressureRegulatorValveTableViewController.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import Foundation
import UIKit

class HowToOrderPressureRegulatorValveTableViewController: UITableViewController {
    var comodin: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Easy Order MK60 Valve"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return comodin.count
        } else {
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellSelection" , for: indexPath)
        let valve = comodin[indexPath.row]
        cell.showsReorderControl = true
        cell.textLabel?.text = valve
        cell.detailTextLabel?.text = valve
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableView.deselectRow(at: indexPath, animated: true)
        let const = indexPath.row
        print(const)
        let valve = comodin[indexPath.row]
        print(valve)
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
        }
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .none
        }
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedValve = comodin.remove(at: sourceIndexPath.row)
        comodin.insert(movedValve, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            comodin.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .top)
        }
    }
    @IBAction func nextButtonTapped(_ sender: UIBarButtonItem) {
        print("you pressed next button, the last row is ")
    }
    

}
