//
//  ViewController.swift
//  Quizzler
//
//  Created by Azam on 12/01/17.
//  Copyright © 2017 Azamworld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let firstQuestion = allQuestions.list[0]
//        questionLabel.text = firstQuestion.questionText
        
          nextQuestion()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
  
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        nextQuestion()
        
    }
    
    
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) /13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
      
    }
    

    func nextQuestion() {
        
        if questionNumber <= 12 {
            
        questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
            
        }
        else {
//            print("End of the Quiz")
//            questionNumber = 0
            
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
//            print("You got it!")
//            ProgressHUD.showSuccess("Correct")
            score += 1
        }
        else {
//            print("wrong!")
//            score -= 1
//            ProgressHUD.showError("Wrong!")
        }
    }
    
    
    func startOver() {
        
        questionNumber = 0
        score = 0
       nextQuestion()
        
    }
    

    
}
