//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
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
    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UILabel!
    
    
    
    let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png")]
    
    @IBAction func askButtonPressed (_ sender: UIButton){
        imageView.image = ballArray.randomElement()!;
    }

}

