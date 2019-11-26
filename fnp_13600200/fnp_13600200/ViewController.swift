//
//  ViewController.swift
//  fnp_13600200
//
//  Created by songsuay on 11/25/19.
//  Copyright © 2019 ICTSUIM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomGiftIndex : Int = 0
    var myimage = ["gift1", "gift2", "gift3", "gift4", "gift5", "gift6"]
    let allQuestion = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
//    var questionNumber: Int?
//    var score: Int?
//    var selectedAnswer: Int?
    
    

    @IBOutlet weak var Scorelabel: UILabel!
    @IBOutlet weak var QuestionCounter: UILabel!
    @IBOutlet weak var Progressview: UIView!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var WordingLAbel: UILabel!
    
    @IBOutlet weak var gift: UIImageView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()

    }

    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer{
            print("correct")
            score += 1
        }else{
            print("wrong")
        }
        
        questionNumber += 1
        updateQuestion()
        
    }
    
    func updateQuestion(){
        
      
        if questionNumber <= allQuestion.list.count - 1{
            WordingLAbel.text = allQuestion.list[questionNumber].question
            optionA.setTitle(allQuestion.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestion.list[questionNumber].optionB, for: UIControl.State.normal)
            selectedAnswer = allQuestion.list[questionNumber].correctAnswer
            updateUI()

        }else {
            let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)

        }

    }
    
    func updateUI(){
        Scorelabel.text = "Score : \(score)"
        QuestionCounter.text = "\(questionNumber + 1)/\(allQuestion.list.count)"
        Progressview.frame.size.width = (view.frame.size.width / CGFloat(allQuestion.list.count)) * CGFloat(questionNumber + 1)

    }

    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    @IBAction func Randomgiftbtn(_ sender: Any) {
        
        randomGift()
        
    }
    
    func randomGift(){
        
        randomGiftIndex = Int(arc4random_uniform(6))
        gift.image = UIImage(named:myimage[randomGiftIndex])
        
    }
    
    
}

