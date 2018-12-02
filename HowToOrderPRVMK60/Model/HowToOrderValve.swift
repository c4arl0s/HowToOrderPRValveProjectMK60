//
//  HowToOrderPressureRegulator.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import Foundation
import UIKit

struct HowToOrderValve {
    var model: Model
    var size: Size
    var bodyMaterial: BodyMaterial
    
    init(model: Model, size: Size, bodyMaterial: BodyMaterial) {
        self.model = model
        self.size = size
        self.bodyMaterial = bodyMaterial
    }
    static func getAllCharacteristics() -> [String] {
        let arrayOfCharacteriscs = [ "Model",
                                     "Size",
                                     "Body Material",
                                     "End Connections",
                                     "Trim",
                                     "Seat Material",
                                     "Cv",
                                     "MK 60 Spring Range",
                                     "Diaphragm",
                                     "Actuator",
                                     
        ]
        return arrayOfCharacteriscs
    }
}
