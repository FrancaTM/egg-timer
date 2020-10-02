//
//  ViewController.swift
//  Egg Timer
//
//  Created by Tulio Marcos Franca on 01/10/20.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes = ["Soft": 5, "Medium": 8, "Hard": 12]

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!

        switch hardness {
        case "Soft":
            print(eggTimes[hardness]!)
        case "Medium":
            print(eggTimes[hardness]!)
        case "Hard":
            print(eggTimes[hardness]!)

        default:
            print("Error")
        }
    }
}
