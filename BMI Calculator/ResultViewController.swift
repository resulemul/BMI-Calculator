//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Resul Emül on 7/25/20.
//  Copyright © 2020 NeviPlay. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    let bmifile = BMIfile()
    var bmiDouble = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmifile.getBmi()
        bmiDouble = bmifile.getBmiDouble()
        if bmiDouble < 18.5 {
            recommendLabel.text = "eat much"
        } else if bmiDouble < 24.9 {
            recommendLabel.text = "you are perfecto"
        }else {
            recommendLabel.text = "eat less"
        }
        
    }
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var recommendLabel: UILabel!
    
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
