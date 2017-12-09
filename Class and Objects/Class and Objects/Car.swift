//
//  Car.swift
//  Class and Objects
//
//  Created by Azam on 12/7/17.
//  Copyright © 2017 Azamworld. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
    
}

class Car {
    
    var color = "Black"
    var numberOfSeats : Int = 5
    var typeOfCars : CarType = .Coupe
    
//    init(customerChosenColor : String) {
//        color = customerChosenColor
//    }
    
    init() {
    }

   convenience init(customerChosenColor : String) {
        self.init()
        color = customerChosenColor
    }
    
    func drive() {
        print("Car is moving.")
    }
    
}
