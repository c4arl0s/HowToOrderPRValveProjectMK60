//
//  Model.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation
import UIKit

enum Model: String  {
    case Std = "60"
    case HP = "60HP"
    case QC = "60QC"
    case LD = "61"
    
    var feature: String {
        switch self {
        case .Std: return "Standard 60"
        case .HP: return "High Pressure 60HP"
        case .QC: return "Quick Change 60QC"
        case .LD: return "Large Diaphragm 61"
        }
    }
    static func getAllModels() -> [String] {
        let arrayOfModels = [ "Standard", "High Pressure", "Quick Change", "Large Diaphragm" ]
        return arrayOfModels
    }
}
