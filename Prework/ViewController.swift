//
//  ViewController.swift
//  Prework
//
//  Created by Emin Mammadzada on 27.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var peopleStepper: UIStepper!
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tipChanged(_ sender: Any) {
        tipPercentageLabel.text = String(format: "%.2f", tipSlider.value * 100) + "%"
    }
    
    @IBAction func peopleChanged(_ sender: Any) {
        let people = Int(peopleStepper.value)
        peopleLabel.text = String(people)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountField.text!) ?? 0
        let tip = Double(tipSlider.value) * bill
        let people = Int(peopleStepper.value)
        let total = tip + bill
        let totalPerPerson = total / Double(people)
        
        tipLabel.text = String(format: "$%.2f", tip)
        peopleLabel.text = String(people)
        totalLabel.text = String(format: "$%.2f", total)
        totalPerPersonLabel.text = String(format: "$%.2f", totalPerPerson)
        tipPercentageLabel.text = String(format: "%.2f", tipSlider.value * 100) + "%"
    }
    
    @IBAction func reset(_ sender: Any) {
        tipLabel.text = "$0.00"
        peopleLabel.text = String(1)
        totalLabel.text = "$0.00"
        totalPerPersonLabel.text = "$0.00"
        tipPercentageLabel.text = "50%"
        
        tipSlider.value = 0.5
        billAmountField.text = ""
        peopleStepper.value = 1
    }
    


}

