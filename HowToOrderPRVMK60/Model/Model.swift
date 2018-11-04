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
    case Standard = "60"
    case HighPressure = "60HP"
    case QuickChange = "60QC"
    case LargeDiaphragm = "61"
    
    var feature: String {
        switch self {
        case .Standard: return "Standard 60"
        case .HighPressure: return "High Pressure 60HP"
        case .QuickChange: return "Quick Change 60QC"
        case .LargeDiaphragm: return "Large Diaphragm 61"
        }
    }
    func getAllModels() -> [String] {
        let arrayOfModels = [ Model.Standard.feature,
                              Model.HighPressure.feature,
                              Model.QuickChange.feature,
                              Model.LargeDiaphragm.feature]
        return arrayOfModels
    }
}
