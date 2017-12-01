//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Azam on 12/1/17.
//  Copyright © 2017 Azamworld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    let answerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomAnswer : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        askMeAnything()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func askButtonPressed(_ sender: Any) {
        askMeAnything()
    }
    
    func askMeAnything() {
        
        randomAnswer  = Int(arc4random_uniform(5))
        imageView.image = UIImage(named : answerArray[randomAnswer])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        askMeAnything()
    }

}

