//
//  SelfDrivingCar.swift
//  Class and Objects
//
//  Created by Azam on 12/7/17.
//  Copyright © 2017 Azamworld. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    var destination : String?
    
    override func drive() {
        super.drive()
        
        if let userSetDestination = destination {
            
        print("Driving towards " + userSetDestination)
            
        }
        
    }
    
}
