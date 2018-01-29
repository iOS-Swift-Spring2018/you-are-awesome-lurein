//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Enoka Jayamanne on 1/20/18.
//  Copyright © 2018 Lurein Perera. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var awesomeImage: UIImageView!
    
    var lastIndex = -1
    var imageNumber = -1
    var soundNumber = -1
    let numberOfImages = 4
    let numberOfSounds = 6
    var awesomePlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func playSound(soundName: String){
        if let sound = NSDataAsset(name: soundName){
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
                
            } catch{
                print("The data could not be played")
                
            }
        }else {
            print("ERROR: File: \(soundName) could not be found")
        }
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int{
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        return newIndex
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
       
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Legendary!",
                        "You Make the Mirror Look Good!",
                        "You Are as Fine as a Sharpie!",
                        "I'd Choose You Over Siri!"]
       
        var randomIndex : Int
        awesomeImage.isHidden = false

        randomIndex = nonRepeatingRandom(lastNumber: lastIndex, maxValue: messages.count)
        messageLabel.text = messages[randomIndex]
       // lastIndex = randomIndex
        

        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
    
        soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
        
        
        let soundName = "sound\(soundNumber)"
        playSound(soundName: soundName)
        
    }

    
}

