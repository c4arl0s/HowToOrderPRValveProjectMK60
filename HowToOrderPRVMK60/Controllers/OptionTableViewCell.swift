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
