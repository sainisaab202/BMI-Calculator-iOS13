//
//  ViewController.swift
//  BMI Calculator
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    
    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var sliderHeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        lblHeight.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        lblWeight.text = String(Int(sender.value)) + "Kg"
    }
    
    @IBAction func btnCalculateTouchUp(_ sender: UIButton) {
        let height = sliderHeight.value
        let weight = sliderWeight.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
//        print(bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        //show new viewController
//        self.present(secondVC, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult"{
            // to send over values to new view controller
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = BMI(value: calculatorBrain.getBMIValue(), advice: calculatorBrain.getAdvice(), color: calculatorBrain.getColor())
        }
    }
}

