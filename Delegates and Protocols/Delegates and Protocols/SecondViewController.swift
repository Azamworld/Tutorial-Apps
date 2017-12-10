//
//  SecondViewController.swift
//  Delegates and Protocols
//
//  Created by Azam on 12/10/17.
//  Copyright © 2017 Azamworld. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data : String)
}


class SecondViewController: UIViewController {

    var delegate : CanReceive?
    var data = ""
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = data
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendDataBack(_ sender: Any) {
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
