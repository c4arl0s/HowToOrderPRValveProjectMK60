//
//  FirstTableViewController.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/11/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    var arrayToPass: [String] = []
    var titleToPass: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableViewNIB()
        addSomePaddingToTheTop()
        automaticDimension()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HowToOrderValve.getAllCharacteristics().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacteristicTableViewCell", for: indexPath) as! CharacteristicTableViewCell
        let characteristic = HowToOrderValve.getAllCharacteristics()[indexPath.row]
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
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 65
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: indexPath)! as! CharacteristicTableViewCell
        switch indexPath {
        case [0,0]:
            titleToPass = currentCell.characteristicLabel.text!
            arrayToPass = Model.getAllModels()
            performSegue(withIdentifier: "goToChoose", sender: self)
        case [0,1]:
            titleToPass = currentCell.characteristicLabel.text!
            arrayToPass = Size.getAllSizes()
            performSegue(withIdentifier: "goToChoose", sender: self)
        case [0,2]:
            titleToPass = currentCell.characteristicLabel.text!
            arrayToPass = BodyMaterial.getAllMaterials()
            performSegue(withIdentifier: "goToChoose", sender: self)
        default:
            print("noneofThem")
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToChoose") {
            let viewController = segue.destination as! HowToOrderPressureRegulatorValveTableViewController
            viewController.passedArrayFromFTVC = arrayToPass
        }
    }
   
}
