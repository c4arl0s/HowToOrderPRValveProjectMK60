//
//  Actuator.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 30/03/20.
//  Copyright © 2020 Carlos Santiago Cruz. All rights reserved.
//

import Foundation

enum Actuator: String, CaseIterable, Codable {
    case DIforMetalDiagram = "DI for Metal Diaphragm (1/4 – 2 inch only)"
    case DIforElastomDiaphragm = "DI for Elastomer Diaphragm"
    case ss316forMetalDiaphgram = "316 for Metal Diaphragm"
    
    var orderIdentifier: String {
        switch self {
        case .DIforMetalDiagram:
            return "MD"
        case .DIforElastomDiaphragm:
            return "ED"
        case .ss316forMetalDiaphgram:
            return "SM"
        }
    }
    
    static var orderIdentifiers: [String] {
        var identifiers = [String]()
        for actuator in Actuator.allCases {
            identifiers.append(actuator.rawValue)
        }
        return identifiers
    }
}
