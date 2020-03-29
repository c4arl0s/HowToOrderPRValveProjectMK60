//
//  SeatMaterial.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 12/22/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation


enum SeatMaterial: String, CaseIterable  {
    case A = "303SST (1/4 inch – 2 inch)"
    case B = "316SST (1/4 inch – 2 inch)"
    case V = "303SS/Jorcote"
    case W = "316SS/Jorcote"
    case X = "303SS/JOR/JIC"
    case Y = "316SS/JOR/JIC"
    
    var feature: String {
        switch self {
        case .A: return ""
        case .B: return ""
        case .V: return ""
        case .W: return ""
        case .X: return ""
        case .Y: return ""
        }
    }
    static func orderIdentifiers() -> [String] {
        var identifiers: [String] = []
        for seatMaterial in SeatMaterial.allCases {
            identifiers.append(seatMaterial.rawValue)
        }
        return identifiers
    }
}

