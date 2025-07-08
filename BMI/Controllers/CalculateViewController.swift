//
//  ViewController.swift
//  BMI
//
//  Created by Lakshaya Singh Tanwar on 02/07/25.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBOutlet weak var calculateButton: UIButton!
   
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
      
        
        let roundedValue = String(format:"%.2f", sender.value)
           heightLabel.text = "\(roundedValue) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let intValue = String(format:"%.0f", sender.value)
        
           weightLabel.text = "\(intValue) m" 
    }
    
    
    
    
    @IBAction func calculateButttonPressed(_ sender: Any) {
        let  bmi = String (format:"%.2f",(weightSlider.value)/pow(heightSlider.value,2))
        print(bmi)
        
        
    }
    
}

