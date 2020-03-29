//
//  Size.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import Foundation
import UIKit

enum Size: String, CaseIterable {
    case oneQuarter = "1/4 inch (DN8)"
    case ThreeOctave = "3/8 inch (DN10)"
    case half = "1/2 inch (DN15)"
    case threeQuarter = "3/4 inch (DN20)"
    case one = "1 inch (DN25)"
    case oneOneQuarter = "1-1/4 inch (DN32)"
    case oneOneAndHalf = "1-1/2 inch (DN40)"
    case two = "2 inch (DN50)"
    case twoAndHalf = "2-1/2 inch (DN65) (MK60/60HP only)"
    case three = "3 inch (DN80) (MK60/60HP only)"
    case four = "4 inch (DN100) (MK60/60HP only)"
    
    var orderIdentifier: String {
        switch self {
        case .oneQuarter: return "025"
        case .ThreeOctave: return "038"
        case .half: return "050"
        case .threeQuarter: return "075"
        case .one: return "100"
        case .oneOneQuarter: return "125"
        case .oneOneAndHalf: return "150"
        case .two: return "200"
        case .twoAndHalf: return "250"
        case .three: return "300"
        case .four: return "400"
        }
    }
    
    static var orderIdentifiers: [String] {
        var identifiers: [String] = []
        for size in Size.allCases {
            identifiers.append(size.rawValue)
        }
        return identifiers
    }
}
