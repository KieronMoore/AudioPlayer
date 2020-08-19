//
//  ViewController.swift
//  AudioExercise
//
//  Created by Kieon Moore on 8/18/20.
//  Copyright © 2020 Kieon Moore. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    var audioplayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         let sound = Bundle.main.path(forResource:"Trippie Redd-Leray (Clean)", ofType: ".mp3")
        
        do{
            audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch{
            print(error)
        }
    }

    
    
    @IBAction func rewindButton(_ sender: Any) {
        let currentTime2 = audioplayer.currentTime

        audioplayer.stop()

              audioplayer.play(atTime: currentTime2 - 30.0)
    }
    
    
    
    @IBAction func pauseButton(_ sender: Any) {
        
        audioplayer.pause()
    }
    
    
    @IBAction func playButton(_ sender: Any) {
        audioplayer.play()
    }
    
    
    @IBAction func stopAudio(_ sender: Any) {
        audioplayer.stop()
    }
    
    @IBAction func fastforwardButton(_ sender: Any) {
        let currentTime = audioplayer.currentTime

  audioplayer.stop()

        audioplayer.play(atTime: currentTime + 30.0)
        
    }
    
}

