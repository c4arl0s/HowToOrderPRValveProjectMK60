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
    
    var orderIdentifier: String {
        switch self {
        case .A: return "A"
        case .B: return "B"
        case .V: return "V"
        case .W: return "W"
        case .X: return "X"
        case .Y: return "Y"
        }
    }
    static var orderIdentifiers: [String] {
        var identifiers = [String]()
        for seatMaterial in SeatMaterial.allCases {
            identifiers.append(seatMaterial.rawValue)
        }
        return identifiers
    }
}

