//
//  Diaphragm.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 30/03/20.
//  Copyright © 2020 Carlos Santiago Cruz. All rights reserved.
//

import Foundation

enum Diaphragm: String, CaseIterable {
    case sst316 = "316SST (1/4 inch – 2 inch only)"
    case viton = "Viton"
    case bunaN = "Buna-N (standard above 2 inch)"
    case jorlon = "Jorlon"
    
    var orderIdentifier: String {
        switch self {
        case .sst316:
            return "S6"
        case .viton:
            return "VI"
        case .bunaN:
            return "BN"
        case .jorlon:
            return "JL"
        }
    }
    
    static var orderIdentifiers: [String] {
        var identifiers = [String]()
        for diaphragm in Diaphragm.allCases {
            identifiers.append(diaphragm.rawValue)
        }
        return identifiers
    }
}


