# HowToOrderPressureReducingValve
This Xcode project is created to  reduce efforts to construct and Order a Pressure Reducing Valve Model MK60 Jordan Valve.

![](https://github.com/carlos-santiago-2017/HowToOrderPRValveProjectMK60/blob/master/howToOrder.gif)

<p align="center">
    <img src="https://github.com/carlos-santiago-2017/HowToOrderPRValveProjectMK60/blob/master/1.png" width="375">
</p>

<p align="center">
    <img src="https://github.com/carlos-santiago-2017/HowToOrderPRValveProjectMK60/blob/master/2.png" width="375">
</p>


<p align="center">
    <img src="https://github.com/carlos-santiago-2017/HowToOrderPRValveProjectMK60/blob/master/3.png" width="375">
</p>

``` swift
//
//  FirstTableViewController.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/11/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import UIKit

class FirstTableViewController: UITableViewController, Delegate {
    

    
    var arrayToPass: [String] = []
    var titleToPass: String = ""
    var indexPathToPass: IndexPath!
    
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
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacteristicTableViewCell", for: indexPath) as! CharacteristicTableViewCell
        let characteristic = HowToOrderValve.getAllCharacteristics()[indexPath.row]
        cell.characteristicLabel?.text = characteristic
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: indexPath)! as! CharacteristicTableViewCell
        indexPathToPass = indexPath
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
        case [0,3]:
            titleToPass = currentCell.characteristicLabel.text!
            arrayToPass = Endconnection.getAllEndconnection()
            performSegue(withIdentifier: "goToChoose", sender: self)
        case [0,4]:
            titleToPass = currentCell.characteristicLabel.text!
            arrayToPass = Trim.getAllTrim()
            performSegue(withIdentifier: "goToChoose", sender: self)
        case [0,5]:
            titleToPass = currentCell.characteristicLabel.text!
            arrayToPass = SeatMaterial.getAllSeatMaterial()
            performSegue(withIdentifier: "goToChoose", sender: self)
        case [0,6]:
            titleToPass = currentCell.characteristicLabel.text!
            arrayToPass = Cv.getAllCv()
            performSegue(withIdentifier: "goToChoose", sender: self)
        default:
            print("noneofThem")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToChoose") {
            let destinationViewController =
                segue.destination as? HowToOrderPressureRegulatorValveTableViewController
            destinationViewController?.passedArrayFromFTVC = arrayToPass
            destinationViewController?.navigationItem.title = titleToPass
            destinationViewController?.indexPathPassed = indexPathToPass
            destinationViewController?.delegate = self
        }
    }
    func updateOptionLabel(dataToPass: String, indexPathPassed: IndexPath) {
        let cellFromIndexPathPassed = tableView.cellForRow(at: indexPathPassed)! as! CharacteristicTableViewCell
        cellFromIndexPathPassed.optionLabel.text = dataToPass
        self.tableView.reloadData()
    }
}
```

``` swift
//
//  HowToOrderPressureRegulatorValveTableViewController.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import Foundation
import UIKit

protocol Delegate {
    func updateOptionLabel(dataToPass: String, indexPathPassed: IndexPath)
}

class HowToOrderPressureRegulatorValveTableViewController: UITableViewController {
    var passedArrayFromFTVC: [String] = []
    var delegate: Delegate?
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
        let cell = tableView
                   .dequeueReusableCell(withIdentifier: "cellSelection",
                                        for: indexPath) as! OptionTableViewCell
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
        self.delegate?.updateOptionLabel(dataToPass: optionSelected, indexPathPassed: indexPathPassed)
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
        }
        
    }

}
```
``` swift
//
//  CharacteristicTableViewCell.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/11/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import Foundation
import UIKit

class CharacteristicTableViewCell: UITableViewCell {

    @IBOutlet weak var characteristicLabel: UILabel!
    @IBOutlet weak var optionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
```

``` swift
//
//  OptionTableViewCell.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/11/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import UIKit

protocol OptionTableViewCellDelegate {
    func updateOptionLabel(data: String)
}

class OptionTableViewCell: UITableViewCell {
    @IBOutlet weak var labelOption: UILabel!
    var delegate: OptionTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate?.updateOptionLabel(data: labelOption.text!)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
```

<p align="center">
    <img src="https://github.com/carlos-santiago-2017/HowToOrderPRValveProjectMK60/blob/master/delegate.png">
</p>

