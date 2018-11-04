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
}

var howToOrderValves: [HowToOrderValve] = [
    HowToOrderValve(model: .Standard, size: .ThreeOctave, bodyMaterial: .Bronze),
    HowToOrderValve(model: .HighPressure, size: .oneAndHalf, bodyMaterial: .CarbonSteel),
    HowToOrderValve(model: .LargeDiaphragm, size: .oneAndHalf, bodyMaterial: .CarbonSteel),
    HowToOrderValve(model: .QuickChange, size: .oneAndHalf, bodyMaterial: .CarbonSteel),
]



