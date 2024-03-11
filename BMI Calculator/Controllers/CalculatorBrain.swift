//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by GurPreet SaiNi on 2024-03-08.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        let color = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        if bmiValue < 18.5{
            //underweight
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24.9{
            //normal weight
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            //overweight
            bmi = BMI(value: bmiValue, advice: "Eat less Pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> Float{
        let bmiOneDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return Float(bmiOneDecimal) ?? 0.0
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "errorOccure"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? .white
    }
}
