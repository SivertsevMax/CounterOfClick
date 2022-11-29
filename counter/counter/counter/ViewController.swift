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
    var sum = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterButton.tintColor = UIColor.gray
        counterButton.layer.cornerRadius = 15
        
    }

    @IBAction func countOfTap(_ sender: Any) {
        sumOfCountLabel.text = "Значение счётчика: \(sum)"
        sum += 1
    }
}

