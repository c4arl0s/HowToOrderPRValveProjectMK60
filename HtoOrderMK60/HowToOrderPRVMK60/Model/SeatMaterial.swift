//
//  SeatMaterial.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 12/22/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation


enum SeatMaterial: String, CaseIterable, Codable  {
    case SST303 = "303SST (1/4 inch – 2 inch)"
    case SST316 = "316SST (1/4 inch – 2 inch)"
    case SS303Jorcote = "303SS/Jorcote"
    case SS316Jorcote = "316SS/Jorcote"
    case SS303JorJic = "303SS/JOR/JIC"
    case SS316JorJic = "316SS/JOR/JIC"
    
    var orderIdentifier: String {
        switch self {
        case .SST303: return "A"
        case .SST316: return "B"
        case .SS303Jorcote: return "V"
        case .SS316Jorcote: return "W"
        case .SS303JorJic: return "X"
        case .SS316JorJic: return "Y"
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

