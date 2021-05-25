//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 6
    var images = [
        #imageLiteral(resourceName: "DiceOne"),
        #imageLiteral(resourceName: "DiceTwo"),
        #imageLiteral(resourceName: "DiceThree"),
        #imageLiteral(resourceName: "DiceFour"),
        #imageLiteral(resourceName: "DiceFive"),
        #imageLiteral(resourceName: "DiceSix")
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RollDice(_ sender: UIButton) {
        leftDiceNumber =  Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        diceImage1.image = images[leftDiceNumber]
        diceImage2.image = images[rightDiceNumber]
        
    }
    
}

