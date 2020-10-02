//
//  ViewController.swift
//  Egg Timer
//
//  Created by Tulio Marcos Franca on 01/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 8
    let hardTime = 12
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        switch hardness {
        case "Soft":
            print(softTime)
        case "Medium":
            print(mediumTime)
        case "Hard":
            print(hardTime)

        default:
            print("Error")
        }
    }
    
}

