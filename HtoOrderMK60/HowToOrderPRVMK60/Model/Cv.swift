//
//  Cv.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 12/22/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation

enum Cv: String, CaseIterable, Codable  {
    case one = "0.21 (0,28)"
    case two = "0.42 (0,36)"
    case three = "0.84 (0,72)"
    case four = "1.6 (1,4)"
    case five = "2.5 (2,2)"
    case six = "4.4 (3,8)"
    case seven = "6.4 (5,5)"
    case eight = "9.5 (8,2)"
    case nine = "15 (12,9)"
    case A = "25 (21,6)"
    case B = "30 (25,9)"
    case D = "55 (47,4)"
    case F = "85 (73,3)"
    case G = "115 (99,1)"
    case I = "200 (172)"
    
    var orderIdentifier: String {
        switch self {
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .A: return "A"
        case .B: return "B"
        case .D: return "D"
        case .F: return "F"
        case .G: return "G"
        case .I: return "I"
        }
    }
    static var orderIdentifiers: [String] {
        var identifiers = [String]()
        for cv in Cv.allCases {
            identifiers.append(cv.rawValue)
        }
        return identifiers
    }
    
}





