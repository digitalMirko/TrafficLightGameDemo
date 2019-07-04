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
        // Do any additional setup after loading the view.
    }
    
    // Start Game Button
    @IBAction func startGameBtn(_ sender: Any) {
        
        
    }
    

}

