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
    var howToOrder: HowToOrderValve?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableViewNIB()
    }
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return howToOrder!.getAllCharacteristics().count
        } else {
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacteristicTableViewCell", for: indexPath) as! CharacteristicTableViewCell
        let characteristic = howToOrder!.getAllCharacteristics()[indexPath.row]
        cell.characteristicLabel?.text = characteristic
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func registerTableViewNIB(){
        tableView.register(UINib(nibName: "CharacteristicTableViewCell",
                                bundle: nil),
                                forCellReuseIdentifier: "CharacteristicTableViewCell")
    }
}
