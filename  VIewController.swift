//
//  ViewController.swift
//  Xylophone
//
//  Created by Will Wang on 08/08/2017.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer = AVAudioPlayer()
    
    let soundArray = ["note1", "note2","note3","note4","note5","note6","note7"]

    
    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundArray[sender.tag - 1])
    }
    
    func playSound(_ soundFileName: String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }
    
    
    
}

