//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {//0
    
    var timerr : Timer?
    
    @IBOutlet weak var progressViewBar: UIProgressView!
    var counter = 30
    
    @IBAction func hardnessSelected(_ sender: UIButton) { //1
        // It count seconds
        var timeInterval = Double(sender.currentTitle!)! * 60
        let timerInt = timeInterval
        self.timerr = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { //2
            timer in
            
            if timeInterval == 0 {
                self.timerr?.invalidate()
                // Create the alert
                let alertController = UIAlertController(
                    title: "Message",
                    message: "Your Egg is Ready!",
                    preferredStyle: .alert)
                
                // Create OK button
                let OKAction = UIAlertAction(
                    title: "OK",
                    style: .default) {
                    (action: UIAlertAction!) in
                    
                    self.progressViewBar.progress = 0.0
                    
                };alertController.addAction(OKAction)
                
                // Present Dialog message
                self.present(alertController, animated: true, completion: nil)
             
            }
            else
            {
                // Progress View
                self.progressViewBar.progress += Float(100 / timerInt * 0.01)
                timeInterval -= 1
            }
        }//2
        
        
    } //1
    
    
    
    
    
}//0
