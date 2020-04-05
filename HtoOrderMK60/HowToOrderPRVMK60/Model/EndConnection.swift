//
//  EndConnections.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 12/22/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation
import UIKit

enum Endconnection: String, CaseIterable, Codable  {
    case NPT = "NPT"
    case BSPT = "BSPT"
    case BSPP = "BSPP"
    case FSW = "FSW"
    case IFE150 = "150# IFE"
    case FE150 = "150# FE (Except IFE)"
    case IFE300 = "300# IFE"
    case FE300 = "300# FE (Except IFE)"
    
    var orderIdentifier: String {
        switch self {
        case .NPT: return "PT"
        case .BSPT: return "BT"
        case .BSPP: return "BP"
        case .FSW: return "SW"
        case .IFE150: return "I5"
        case .FE150: return "F5"
        case .IFE300: return "I3"
        case .FE300: return "F3"
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
