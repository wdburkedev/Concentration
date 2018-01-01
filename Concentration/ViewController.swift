//
//  ViewController.swift
//  Concentration
//
//  Created by Bill Burke on 12/14/17.
//  Copyright © 2017 Bill Burke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0  {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var  emojiChoices = ["👻", "🎃", "🦇", "🧟‍♂️", "🧟‍♀️", "👻", "👹", "🦇", "🧟‍♂️", "🧟‍♀️", "🎃", "👹"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        
        flipCount += 1
        
        if let cardNumber = cardButtons.index(of: sender){
            print("Count is \(flipCount) and Card Number is \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
                
    }
    func flipCard(withEmoji emoji: String, on button: UIButton)  {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor  = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for:
            UIControlState.normal)
            button.backgroundColor  = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        }
    }
}

