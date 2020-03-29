//
//  Trim.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 12/22/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation

enum Trim: String, CaseIterable  {
    case S3 = "303SS"
    case S6 = "316SS"
    case I3 = "303SSF/IFE (1/2 inch - 2 inch CS/S6)"
    case I6 = "316SSF/IFE (1/2 inch - 2 inch CS/S6)"
    
    var orderIdentifier: String {
        switch self {
        case .S3: return "S3"
        case .S6: return "S6"
        case .I3: return "I3"
        case .I6: return "I6"
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
