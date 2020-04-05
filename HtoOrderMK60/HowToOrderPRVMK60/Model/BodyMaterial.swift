//
//  BodyMaterial.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import Foundation
import UIKit

enum BodyMaterial: String, CaseIterable, Codable {
    case ductilIron = "Ductil Iron"
    case bronze = "Bronze"
    case carbonSteel = "Carbon Steel"
    case stainlessSteel = "Stainless Steel"
    case castIron = "Cast Iron"
    
    var orderIdentifier: String {
        switch self {
        case .ductilIron: return "DI"
        case .bronze: return "BR"
        case .carbonSteel: return "CS"
        case .stainlessSteel: return "SS"
        case .castIron: return "CI"
        }
    }
    static var orderIdentifiers: [String] {
        var identifiers = [String]()
        for bodyMaterial in BodyMaterial.allCases {
            identifiers.append(bodyMaterial.rawValue)
        }
        return identifiers
    }
}
