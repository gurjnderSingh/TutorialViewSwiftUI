//
//  PlaySound.swift
//  TutorialUI
//
//  Created by Gurjinder Singh on 10/02/23.
//

import AVFoundation // Audio Video
import Foundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find any sound file")
        }
    }
}


