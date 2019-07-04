//
//  ViewController.swift
//  Traffic Lights Game Demo
//
//  Created by Mirko Cukich on 7/3/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // The quicker your reactions the lower the score will be
    
    // Traffic Light image - change through the game
    @IBOutlet weak var trafficLightImage: UIImageView!
    // Middle number label
    @IBOutlet weak var textLbl: UILabel!
    // Button label which will change text during the game
    @IBOutlet weak var startStopBtn: UIButton!
    
    // Timers used
    // 3,2,1 for the traffic lights
    var startTimer = Timer()
    // Increases the score during the game
    var scoreTimer = Timer()
    
    // timer starts at 0
    var timerInt = 0
    // score starts at 0
    var scoreInt = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Game score starts at zero
        scoreInt = 0
        
    }
    
    // Start Game Button
    @IBAction func startGameBtn(_ sender: Any) {
        
        // start game play ready to play
        if scoreInt == 0 {
          // top graphic starts at blank, then down colors from Red to Yellow to Green
            timerInt = 3
          // used to display image
            trafficLightImage.image = UIImage(named: "trafficLight")
          // trigger countdown, timer repeats every second
            startTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            
            // disables start button
            startStopBtn.isEnabled = false
            // sets the button text
            startStopBtn.setTitle("", for: UIControl.State.normal)
            // when restarting the game it changes the label text
            textLbl.text = String(scoreInt)
            
        } else {
            // if you press btn when game is running it will invalidate the score
            scoreTimer.invalidate()
            // score int = to zero in the backgroun,
            scoreInt = 0
            // changes button text to Restart
            startStopBtn.setTitle("Restart", for: UIControl.State.normal)
        }
    }
    
    // timer used to change the traffic light graphic at the top
    @objc func updateTimer(){
        // takes 1 away from timerInt until it gets to 0
        timerInt -= 1
        
        if timerInt == 2 {
            // Red color
            trafficLightImage.image = UIImage(named: "trafficLight3")
            
        } else if timerInt == 1 {
            // Yellow color
            trafficLightImage.image = UIImage(named: "trafficLight2")
            
        } else if timerInt == 0 {
            // Green color
            trafficLightImage.image = UIImage(named: "trafficLight1")
            // stops timer and invalidates
            startTimer.invalidate()
            // time clock
            scoreTimer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(updateScoreTimer), userInfo: nil, repeats: true)
            
            // enables start button
            startStopBtn.isEnabled = true
            // sets the button text
            startStopBtn.setTitle("Stop", for: UIControl.State.normal)
        }
    }
    // updates the score time to start increasing
    @objc func updateScoreTimer(){
        // updates the scoreInt
        scoreInt += 1
        textLbl.text = String(scoreInt)
        
    }
}

