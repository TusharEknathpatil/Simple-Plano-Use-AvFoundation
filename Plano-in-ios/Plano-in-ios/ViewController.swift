//
//  ViewController.swift
//  Plano-in-ios
//
//  Created by Mac on 03/05/23.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var player:AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   
    @IBAction func clickToPlano(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try!AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
}

