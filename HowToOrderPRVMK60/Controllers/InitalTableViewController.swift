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
        addSomePaddingToTheTop()
        automaticDimension()
        self.title = "How to order"
    }
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            print(howToOrder!.getAllCharacteristics().count)
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
  
    func registerTableViewNIB(){
        tableView.register(UINib(nibName: "CharacteristicTableViewCell", bundle: nil), forCellReuseIdentifier: "CharacteristicTableViewCell")
    }
    func addSomePaddingToTheTop() {
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    func automaticDimension(){
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 65
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
