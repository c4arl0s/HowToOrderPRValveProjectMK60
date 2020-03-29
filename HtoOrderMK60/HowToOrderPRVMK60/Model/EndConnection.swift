//
//  EndConnections.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 12/22/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation
import UIKit

enum Endconnection: String, CaseIterable  {
    case PT = "NPT"
    case BT = "BSPT"
    case BP = "BSPP"
    case SW = "FSW"
    case I5 = "150# IFE"
    case F5 = "150# FE (Except IFE)"
    case I3 = "300# IFE"
    case F3 = "300# FE (Except IFE)"
    
    var orderIdentifier: String {
        switch self {
        case .PT: return "PT"
        case .BT: return "BT"
        case .BP: return "BP"
        case .SW: return "SW"
        case .I5: return "I5"
        case .F5: return "F5"
        case .I3: return "I3"
        case .F3: return "F3"
        }
    }

    static var orderIdentifiers: [String] {
        var identifiers = [String]()
        for endConnection in Endconnection.allCases {
            identifiers.append(endConnection.rawValue)
        }
        return identifiers
    }
    
}
