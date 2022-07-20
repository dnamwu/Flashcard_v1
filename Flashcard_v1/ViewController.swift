//
//  ViewController.swift
//  Flashcard_v1
//
//  Created by Deok Nam on 7/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var qLabel: UILabel!   //added
    @IBOutlet weak var aLabel: UILabel!   // added
    
    var questions: [String] = []  // intialize with empty string to store all questions as strings
    var answers: [String] = [] // to store all answers as strings
    var cardIndex: Int = 0     // pointing to the 1st card
    
    
    override func viewDidLoad() { // starting point of the app
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LoadQuestionsAnswers()  // call this function to build the stack of flashcards
        qLabel.text = questions[cardIndex]
        aLabel.text = "?????"   // intialize answer
    }

    // function for loading questions and answers to the falshcards
    func LoadQuestionsAnswers(){
        questions.append("which city is the capital of Japan?")
        answers.append("Tokyo")
        questions.append("2 to the poswer of 10")
        answers.append("1024")
        questions.append("who is the current Governor of texas")
        answers.append("Greg Abbott")
    }
    
    @IBAction func nextQAction(_ sender: Any) { // added
        cardIndex += 1   // cardIndex  = cardIndex + 1
        if cardIndex == questions.count {  // out of boundary
            cardIndex = 0
        }
        qLabel.text = questions[cardIndex]
        aLabel.text = "?????"
    }
    
    
    @IBAction func showAAction(_ sender: Any) {  // added
        aLabel.text = answers[cardIndex]
        
    }
    
    
}

