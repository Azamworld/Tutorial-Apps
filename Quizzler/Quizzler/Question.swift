//
//  Question.swift
//  Quizzler
//
//  Created by Azam on 12/2/17.
//  Copyright © 2017 Azamworld. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init (text : String, correctAnswer : Bool) {
        
        questionText = text
        answer = correctAnswer
        
    }
    
    
    
}
