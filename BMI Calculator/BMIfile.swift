//
//  File.swift
//  BMI Calculator
//
//  Created by Resul Emül on 7/25/20.
//  Copyright © 2020 NeviPlay. All rights reserved.
//

import Foundation
var bmi = ""
class BMIfile {
    
    func setBmi(bmiVal: String) {
        bmi = bmiVal
    }
    func getBmi() -> String {
        return bmi
    }
    func getBmiDouble() -> Double {
        return Double(bmi) ?? 0.0
    }
}
