//
//  ViewController.swift
//  Xylophone
//
//  Created by Vibhanshu Vaibhav on 20/07/2017.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch{
            print(error)
        }
        
        audioPlayer.play()
    
    }
    
    func hello(hi: String){
        print(hi)
    }

}

