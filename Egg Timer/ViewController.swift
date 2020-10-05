//
//  ViewController.swift
//  Egg Timer
//
//  Created by Tulio Marcos Franca on 01/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    
    let eggTimes = ["Soft": 300, "Medium": 480, "Hard": 720]

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!

        switch hardness {
        case "Soft":
            print(eggTimes[hardness]!)
            counter = eggTimes[hardness]!
        case "Medium":
            print(eggTimes[hardness]!)
            counter = eggTimes[hardness]!
        case "Hard":
            print(eggTimes[hardness]!)
            counter = eggTimes[hardness]!

        default:
            print("Error")
        }
        
        counter = 10
                
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.counter > 0 {
                print("\(self.counter) seconds")
                self.counter -= 1
            } else {
                Timer.invalidate()
                print("timer invalidated")
            }
        }
    }
    
}
