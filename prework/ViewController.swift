//
//  ViewController.swift
//  prework
//
//  Created by 杨凝 on 8/1/22.
//

import UIKit


class ViewController: UIViewController {
  
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmontLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!

    @IBOutlet weak var SplitTextField: UITextField!
    
    @IBOutlet weak var AmountPerPerson: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.title = "Tip Calculator"
        
        self.billAmountTextField.becomeFirstResponder()
        
    }
    

    
    @IBAction func onTap(_ sender: Any) {  view.endEditing(true)
        }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let person =  Double(SplitTextField.text!) ?? 1
                
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let split = total / person
        
       
        
        tipAmontLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f", total)
        AmountPerPerson.text = String(format: "$%.2f", split)
    }
    
    

}

