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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RollDice(_ sender: UIButton) {
        if(leftDiceNumber<5){
            leftDiceNumber = leftDiceNumber+1
        }
        else{
            leftDiceNumber = 0
        }
        diceImage1.image = [
            #imageLiteral(resourceName: "DiceOne"),
            #imageLiteral(resourceName: "DiceTwo"),
            #imageLiteral(resourceName: "DiceThree"),
            #imageLiteral(resourceName: "DiceFour"),
            #imageLiteral(resourceName: "DiceFive"),
            #imageLiteral(resourceName: "DiceSix")
        
        ][leftDiceNumber]
        
    }
    
}

