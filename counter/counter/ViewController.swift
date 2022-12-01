//
//  ViewController.swift
//  counter
//
//  Created by Максим Сиверцев on 29.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var sumOfCountLabel: UILabel!
    @IBOutlet weak var counterButtonPlusTen: UIButton!
    @IBOutlet weak var equalsTwo: UIButton!
    @IBOutlet weak var resetOfSum: UIButton!
    @IBOutlet weak var switchMinusOrPlus: UISwitch!
    var sum: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterButton.tintColor = UIColor.gray
        counterButton.layer.cornerRadius = 6
        counterButtonPlusTen.tintColor = UIColor.gray
        counterButtonPlusTen.layer.cornerRadius = 6
        
    }
    
    @IBAction func countPlusOne(_ sender: Any) {
        if switchMinusOrPlus.isOn {
            sum += 1
            sumOfCountLabel.text = "Значение счётчика: \(sum)"
        } else {
            sum -= 1
            sumOfCountLabel.text = "Значение счётчика: \(sum)"
        }
    }
    @IBAction func countPlusTen(_ sender: Any) {
        if switchMinusOrPlus.isOn {
            sum += 10
            sumOfCountLabel.text = "Значение счётчика: \(sum)"
        } else {
            sum -= 10
            sumOfCountLabel.text = "Значение счётчика: \(sum)"
        }
    }
    @IBAction func resetOfSum(_ sender: Any) {
        sum = 0
        sumOfCountLabel.text = "Значение счётчика: \(sum)"
    }
    @IBAction func equalsTwo(_ sender: Any) {
        if switchMinusOrPlus.isOn {
            sum *= 2
            sumOfCountLabel.text = "Значение счётчика: \(sum)"
        } else {
            sum /= 2
            sumOfCountLabel.text = "Значение счётчика: \(sum)"
        }
    }
    
}
