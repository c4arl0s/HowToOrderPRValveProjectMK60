//
//  HowToOrderPressureRegulator.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/10/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import Foundation
import UIKit

class HowToOrderValve {
    var model: Model
    var size: Size
    var bodyMaterial: BodyMaterial
    
    init(model: Model, size: Size, bodyMaterial: BodyMaterial) {
        self.model = model
        self.size = size
        self.bodyMaterial = bodyMaterial
    }
    func getAllCharacteristics() -> [String] {
        let arrayOfCharacteriscs = [ "Model",
                                     "Size",
                                     "Body Material"]
        return arrayOfCharacteriscs
    }
    
}


