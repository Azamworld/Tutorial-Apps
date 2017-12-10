//
//  ViewController.swift
//  Delegates and Protocols
//
//  Created by Azam on 12/10/17.
//  Copyright © 2017 Azamworld. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func colorChangedButton(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    override func didReceiveMemoryWarning() {

        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }

}

