//
//  ViewController.swift
//  Egg Timer
//
//  Created by Tulio Marcos Franca on 01/10/20.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer!
    let soundName = "alarm_sound"
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBar.progress = 0.0
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        secondsPassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
            
            playSound(soundName: soundName)
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
