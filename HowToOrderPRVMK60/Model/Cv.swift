//
//  Cv.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 12/22/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation


enum Cv: String, CaseIterable  {
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
    
    var feature: String {
        switch self {
        case .one: return ""
        case .two: return ""
        case .three: return ""
        case .four: return ""
        case .five: return ""
        case .six: return ""
        case .seven: return ""
        case .eight: return ""
        case .nine: return ""
        case .A: return ""
        case .B: return ""
        case .D: return ""
        case .F: return ""
        case .G: return ""
        case .I: return ""
        }
    }
    static func getAllCv() -> [String] {
        let arrayOfCv = [
                        Cv.one.rawValue,
                        Cv.two.rawValue,
                        Cv.three.rawValue,
                        Cv.four.rawValue,
                        Cv.five.rawValue,
                        Cv.six.rawValue,
                        Cv.seven.rawValue,
                        Cv.eight.rawValue,
                        Cv.nine.rawValue,
                        Cv.A.rawValue,
                        Cv.B.rawValue,
                        Cv.D.rawValue,
                        Cv.F.rawValue,
                        Cv.G.rawValue,
                        Cv.I.rawValue ]
        return arrayOfCv
    }
    
}





