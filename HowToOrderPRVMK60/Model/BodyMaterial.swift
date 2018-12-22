//
//  BodyMaterial.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import Foundation
import UIKit

enum BodyMaterial: String {
    case ductilIron = "DI"
    case bronze = "BR"
    case carbonSteel = "CS"
    case stainlessSteel = "S6"
    case castIron = "CI"
    
    var feature: String {
        switch self {
        case .ductilIron: return "Ductil Iron"
        case .bronze: return "Bronze"
        case .carbonSteel: return "Carbon Steel"
        case .stainlessSteel: return "Stainless Steel"
        case .castIron: return "Cast Iron"
        }
    }
    static func getAllMaterials() -> [String] {
        let arrayOfMaterials = [ BodyMaterial.ductilIron.feature,
                                BodyMaterial.bronze.feature,
                                BodyMaterial.carbonSteel.feature,
                                BodyMaterial.stainlessSteel.feature,
                                BodyMaterial.castIron.feature
                                ]
        return arrayOfMaterials
    }
}
