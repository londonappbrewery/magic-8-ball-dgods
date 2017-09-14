//
//  ViewController.swift
//  Magic 8 Ball 2.0
//
//  Created by Danni Godsi on 13/09/2017.
//  Copyright © 2017 Danni Godsi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = Int (0)
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: Any) {
        updateBallImages()
    }
    
    func updateBallImages() {
        randomBallNumber = (Int(arc4random_uniform(5)))
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImages()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImages()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

