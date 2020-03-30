//
//  MK60SpringRange.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 29/03/20.
//  Copyright © 2020 Carlos Santiago Cruz. All rights reserved.
//

import Foundation

enum SpringRange {
    case MK60
    case MK60HP
    case MK61
}

enum MK60SpringRange: String, CaseIterable {
    case sixteen = "2-23 (0,14-1,6)"
    case thirtySeven = "10-38 (0,7-3)"
    case fiftySix = "20-55 (1-4)"
    case eightyOne = "35-160 (2-11)"
    case A6 = "95-220 (7-15)"
    case D8 = "30-85 (2-6)"
    case ceroFive = "1-5 (0,07-0,34)"
    case twenty = "3-8 (0,2-0,6)"
    case twentyEight = "5-20 (0,34-1"
    case thirtyFour = "10-30 (0,7-2"
    case fiftyThree = "20-45 (1-3)"
    case seventyFive = "30-95 (2,7"
    case nineSeven = "60-160 (4-11)"
    case twentyNine = "7-18 (0,5-1)"
    case thirtyTwo = "10-25 (0,7-2)"
    case fourtyTwo = "15-35 (1-2)"
    
    var orderIdentifier: String {
        switch self {
        case .sixteen:
            return "16"
        case .thirtySeven:
            return "37"
        case .fiftySix:
            return "56"
        case .eightyOne:
            return "81"
        case .A6:
            return "A6"
        case .D8:
            return "D8"
        case .ceroFive:
            return "05"
        case .twenty:
            return "20"
        case .twentyEight:
            return "28"
        case .thirtyFour:
            return "34"
        case .fiftyThree:
            return "53"
        case .seventyFive:
            return "75"
        case .nineSeven:
            return "97"
        case .twentyNine:
            return "29"
        case .thirtyTwo:
            return "32"
        case .fourtyTwo:
            return "42"
        }
    }
    
    static var orderIdentifiers: [String] {
        var identifiers = [String]()
        for mk60SpringRange in MK60SpringRange.allCases {
            identifiers.append(mk60SpringRange.rawValue)
        }
        return identifiers
    }
}
