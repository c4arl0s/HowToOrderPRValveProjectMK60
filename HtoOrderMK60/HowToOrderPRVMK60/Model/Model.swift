//
//  Model.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation
import UIKit

enum Model: String, CaseIterable, Codable  {
    case standard60 = "Standard 60"
    case highPressure60HP = "High Pressure 60HP"
    case quickChange = "Quick Change 60QC"
    case largeDiaphragm61 = "Large Diaphragm 61"
    
    var orderIdentifier: String {
        switch self {
        case .standard60: return "60"
        case .highPressure60HP: return "60HP"
        case .quickChange: return "60QC"
        case .largeDiaphragm61: return "61"
        }
    }

    static var orderIdentifiers: [String] {
        var identifiers = [String]()
        for model in Model.allCases {
            identifiers.append(model.rawValue)
        }
        return identifiers
    }
}
