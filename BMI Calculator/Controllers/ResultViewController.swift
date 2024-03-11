//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by GurPreet SaiNi on 2024-03-08.
//

import UIKit
//from cocoa touch class file

class ResultViewController: UIViewController {
    
    var bmi: BMI?

    @IBOutlet weak var lblBmi: UILabel!
    @IBOutlet weak var lblAdvice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblBmi.text = String(bmi?.value ?? 0.0)
        view.backgroundColor = bmi?.color
        lblAdvice.text = bmi?.advice
    }
    

    @IBAction func btnRecalculateTouchUp(_ sender: UIButton) {
        
        //to go back to previous view
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
