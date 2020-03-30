//
//  EndConnections.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 12/22/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation
import UIKit

enum Endconnection: String  {
    case PT = "NPT"
    case BT = "BSPT"
    case BP = "BSPP"
    case SW = "FSW"
    case I5 = "150# IFE"
    case F5 = "150# FE (Except IFE)"
    case I3 = "300# IFE"
    case F3 = "300# FE (Except IFE)"
    
    var feature: String {
        switch self {
        case .PT: return ""
        case .BT: return ""
        case .BP: return ""
        case .SW: return ""
        case .I5: return ""
        case .F5: return ""
        case .I3: return ""
        case .F3: return ""
        }
    }
    static func getAllEndconnection() -> [String] {
        
        let arrayOfEndconnection = [ Endconnection.PT.rawValue,
                              Endconnection.BT.rawValue,
                              Endconnection.BP.rawValue,
                              Endconnection.SW.rawValue,
                              Endconnection.I5.rawValue,
                              Endconnection.F5.rawValue,
                              Endconnection.I3.rawValue,
                              Endconnection.F3.rawValue ]
        return arrayOfEndconnection
    }
}
