import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeHeightSlider(_ sender: UISlider) {
        let heightValue = round(sender.value * 100) / 100.0
        heightLabel.text = "\(String(heightValue))m"
    }
    
    @IBAction func changeWeightSlider(_ sender: UISlider) {
        let weightValue = Int(sender.value)
        weightLabel.text = "\(String(weightValue))Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = Float(weightLabel.text!)
        let height = Float(heightLabel.text!)
    }
}

