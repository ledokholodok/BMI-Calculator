import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    var bmiValue : Float!
    
    func getBMIValue() -> String {
        return(String(format: "%.1f", bmi?.value ?? 0.0))
    }
    
    mutating func calculateBMI(_ height : Float, _ weight : Float) {
        bmiValue = weight / pow(height, 2)
        changeBMIParameters()
    }
    
    mutating func changeBMIParameters() {
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", colour: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", colour: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", colour: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No data!"
    }
    
    func getColour() -> UIColor {
        return bmi?.colour ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
