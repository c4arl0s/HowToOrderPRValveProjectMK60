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
    
//    func updateOptionLabel(data: String) {
//
//        optionLabel.text = data
//    }
    
    var source: HowToOrderPressureRegulatorValveTableViewController?
    
    @IBOutlet weak var characteristicLabel: UILabel!
    @IBOutlet weak var optionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()


    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
