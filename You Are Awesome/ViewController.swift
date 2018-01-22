//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Enoka Jayamanne on 1/20/18.
//  Copyright © 2018 Lurein Perera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageButton: UIButton!
    
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
       
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Legendary!",
                        "You Make the Mirror Look Good!",
                        "You Are as Fine as a Sharpie!",
                        "I'd Choose You Over Siri!"]
        
        if index == messages.count-1 {
            index = 0
        } else{
            index += 1
        }
        messageLabel.text = messages[index]
        /*
        let message1 = "You Are Awesome!"
        let message2 = "You Are Great!"
        let message3 = "You Are Legendary!"
        if messageLabel.text == message1{
            messageLabel.text = message2
        } else if messageLabel.text == message2 {
            messageLabel.text = message3
        } else {
            messageLabel.text = message1
        } */
    }

    
}

