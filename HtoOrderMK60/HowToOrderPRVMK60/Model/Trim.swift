//
//  Trim.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 12/22/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation

enum Trim: String, CaseIterable, Codable  {
    case SS303 = "303SS"
    case SS316 = "316SS"
    case FIFE303 = "303SSF/IFE (1/2 inch - 2 inch CS/S6)"
    case FIFE316 = "316SSF/IFE (1/2 inch - 2 inch CS/S6)"
    
    var orderIdentifier: String {
        switch self {
        case .SS303: return "S3"
        case .SS316: return "S6"
        case .FIFE303: return "I3"
        case .FIFE316: return "I6"
        }
    }
    
    static var orderIdentifiers: [String] {
        var identifiers = [String]()
        for trim in Trim.allCases {
            identifiers.append(trim.rawValue)
        }
        return identifiers
    }
}
