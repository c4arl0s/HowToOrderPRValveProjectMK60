//
//  InitalTableViewController.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 11/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import Foundation
import UIKit

class InitalTableViewController: UITableViewController {
    let arrayOfChars = ["Model", "Size", "Material"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "inicial"
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
            return arrayOfChars.count
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        let characteristic = arrayOfChars[indexPath.row]
        cell.textLabel?.text = "\(characteristic.description)"
        cell.detailTextLabel?.text = characteristic.description
        return cell
    }
}
