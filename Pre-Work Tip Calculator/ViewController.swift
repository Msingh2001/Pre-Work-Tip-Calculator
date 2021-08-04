//
//  ViewController.swift
//  Pre-Work Tip Calculator
//
//  Created by Manveer Singh on 7/31/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBOutlet weak var sliderA: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func calculateTip(_ sender: Any) {
    
        let bill = Double(billAmount.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmount.text = String (format: "$%.2f", tip)
        
        totalLabel.text = String (format: "$%.2f", total)
        
    }
    
    
    @IBAction func tipCalculate(_ sender: Any) {
        
        let bill = Double(billAmount.text!) ?? 0
        
        sliderA.text = String(Int(slider.value))
        
        let tip = bill * Double(slider.value/100)
        
        let total = bill + tip
        
        tipAmount.text = String (format: "$%.2f", tip)
        
        totalLabel.text = String (format: "$%.2f", total)
        
        
    }
}
