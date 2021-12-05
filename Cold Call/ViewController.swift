//
//  ViewController.swift
//  Cold Call
//
//  Created by Hajar Alomari on 29/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    //declare UI elements
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    //declare + init variables
    
    var names: [String] = ["Mark", "Kalid", "Layla", "Sara", "Noor"]
  

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Unknown"
      
    }
    
 
    @IBAction func coldCallBtn(_ sender: UIButton) {
        nameLabel.text = names[Int.random(in: 0..<names.count)]
        let randomNumber = Int.random(in: 1...5)
        let strNum = String(randomNumber)
        numberLabel.text = strNum
        if randomNumber == 1 || randomNumber == 2 {
          
            numberLabel.textColor = UIColor.red
        } else if randomNumber == 3 || randomNumber == 4{
            numberLabel.textColor = UIColor.orange
        } else{
            numberLabel.textColor = UIColor.green
        }
    }
    
    
    
}



