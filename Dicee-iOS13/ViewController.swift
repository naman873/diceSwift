//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allow me to reference a UI element
    @IBOutlet var diceImageViewOne: UIImageView!
    @IBOutlet var diceImageViewTwo: UIImageView!
    
    
    let rollNumbers: [UIImage] = [UIImage(imageLiteralResourceName: "DiceOne"),
                       UIImage(imageLiteralResourceName: "DiceTwo"),
                       UIImage(imageLiteralResourceName: "DiceThree"),
                       UIImage(imageLiteralResourceName: "DiceFour"),
                       UIImage(imageLiteralResourceName: "DiceFive"),
                       UIImage(imageLiteralResourceName: "DiceSix")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceOne");
//        diceImageViewOne.alpha = 0.5;
        
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: "DiceOne");
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
     
        diceImageViewOne.image = rollNumbers[Int.random(in: 0...5)]
        //or
//        diceImageViewOne.image = rollNumbers.randomElement();

        
        diceImageViewTwo.image = rollNumbers[Int.random(in: 0...5)]
        
        
      
        
    }
    
}

