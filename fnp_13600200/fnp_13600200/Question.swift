//
//  Question.swift
//  fnp_13600200
//
//  Created by songsuay on 11/25/19.
//  Copyright © 2019 ICTSUIM. All rights reserved.
//

import Foundation
class Question{
    let question: String
    let optionA: String
    let optionB : String
    let correctAnswer : Int
    
    init(questionText: String, choiceA: String, choiceB: String, answer: Int) {
        question = questionText
        optionA = choiceA
        optionB = choiceB
        correctAnswer = answer
    }
    
}
