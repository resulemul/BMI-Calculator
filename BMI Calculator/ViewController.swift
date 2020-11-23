//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Resul Emül on 7/25/20.
//  Copyright © 2020 NeviPlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bmifile = BMIfile()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var height = 165.0
    var weight = 70.0
    var BMI = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightLabel.text = "165 cm."
        weightLabel.text = "70.00 Kg."
        
    }
    @IBAction func heightSlider(_ sender: UISlider) {
        
        heightLabel.text = String(Int(sender.value))+" cm."
        height = Double(sender.value)
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let val = Double(round(1000*sender.value)/1000)
        weightLabel.text = String(format: "%.1f", sender.value)+"0 Kg."
        weight = Double(sender.value)
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        BMI = weight/((height/100)*(height/100))
        print( String(format: "%.2f", BMI))
        bmifile.setBmi(bmiVal: String(format: "%.2f", BMI))
    }

    
}

