//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//


import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}


class ViewController: UIViewController {
    
    @IBOutlet weak var imgViewDiceOne: UIImageView!
    @IBOutlet weak var imgViewDiceTwo: UIImageView!
    @IBOutlet weak var diceOneText: UITextField!
    @IBOutlet weak var diceTwoText: UITextField!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var infoTextField: UITextView!
    @IBOutlet weak var DiceSix: UIImageView!
    @IBOutlet weak var DiceSix2: UIImageView!
    
    let diceNumbers : KeyValuePairs = [
        0 : UIImage(named: "DiceOne"),
        1 : UIImage(named: "DiceTwo"),
        2 : UIImage(named: "DiceThree"),
        3 : UIImage(named: "DiceFour"),
        4 : UIImage(named: "DiceFive"),
        5 : UIImage(named: "DiceSix"),
    ];
    
    var index1:Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollButtonPushed(_ sender: UIButton) {
        
        let randomDiceNumberOne = Int.random(in: 0...5);
        let randomDiceNumberTwo = Int.random(in: 0...5);
        
        diceOneText.text = String(randomDiceNumberOne + 1);
        diceTwoText.text = String(randomDiceNumberTwo + 1);
        
        imgViewDiceOne.image = diceNumbers[randomDiceNumberOne].value;
        imgViewDiceTwo.image = diceNumbers[randomDiceNumberTwo].value;
        
        DiceSix.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][index1];
        DiceSix2.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][(5 - index1)];
        index1+=1;
    }
    
}

