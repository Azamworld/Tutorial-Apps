//
//  ViewController.swift
//  Xylophone
//
//  Created by Azam on 12/01/17.
//  Copyright © 2017 Azamworld. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
//    var selectedSoundFileName : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
//      print(sender.tag)
        
//        selectedSoundFileName  = soundArray[sender.tag-1]
        
//        print(selectedSoundFileName)
        playSound(soundFileName: soundArray[sender.tag-1])
        

    }
    
    func playSound(soundFileName : String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    

}

