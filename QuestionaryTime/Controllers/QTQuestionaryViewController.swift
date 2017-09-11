//
//  QTQuestionaryViewController.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import RealmSwift
import UIKit

class QTQuestionaryViewController: UIViewController {
    
    // MARK: - Global
    
    // MARK: - Privates
    fileprivate var questionary: Results<Question>?
    fileprivate var currentIndex: Int = 0
    fileprivate var score: Int = 0
    
    // MARK: - IBOutlet
    @IBOutlet fileprivate weak var previousQuestionButton: UIButton!
    @IBOutlet fileprivate weak var labelQuestion: UILabel!
    @IBOutlet fileprivate weak var segmentedControlAnswer: UISegmentedControl!
    @IBOutlet fileprivate weak var labelTime: UILabel!
    @IBOutlet fileprivate weak var labelNbrQuestion: UILabel!
    
    // MARK: - Application Lifecyle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let identifier = segue.identifier {
            if identifier == StoryboardSegue.Game.goToResult.rawValue {
                if let vc = segue.destination as? QTResultViewController,
                    let sumOfQuestions = self.questionary?.count {
                    vc.score = self.score
                    vc.nbrOfQuestion = sumOfQuestions
                }
            }
        }
    }
}

// MARK: - QTQuestionaryViewController
extension QTQuestionaryViewController {

    // MARK: - Configurations
    fileprivate func setup() {
        self.automaticallyAdjustsScrollViewInsets = false
        
        self.previousQuestionButton.addTarget(self, action: #selector(self.sendPreviousQuestion), for: .touchDown)
        self.segmentedControlAnswer.addTarget(self, action: #selector(fillSegmentedControl(sender:)), for: .valueChanged)
        if let questions = RealmHelper.objects(type: Question.self) {
            self.questionary = questions
        }
        setupDesign()
    }
    
    // MARK: - Privates Functions
    
    @objc
    private func sendPreviousQuestion() {
        if currentIndex > 0 {
            currentIndex -= 1
            fillLabelQuestion()
        }
    }
    
    private func setupDesign() {
        
        // Segmented control
        self.segmentedControlAnswer.selectedSegmentIndex = -1
        
        // Label time
        self.labelTime.text = ""
        
        // Label question
        self.labelQuestion.textAlignment = .center
        if let question = self.questionary?[currentIndex].issue {
            self.labelQuestion.text = question
        }
        
        // Title
        self.title = "Question \(currentIndex + 1)"
        
        // Selected control answer
        fillLabelQuestion()
    }
    
    func fillSegmentedControl(sender: UISegmentedControl) {
        
        // Title
        self.title = "Question \(currentIndex + 1)"
        
        fillLabelQuestion()
        if let nbrOfQuestion = self.questionary?.count {
            if self.currentIndex == (nbrOfQuestion - 1) {
                self.performSegue(withIdentifier: StoryboardSegue.Game.goToResult.rawValue, sender: self)
            }
        }
        
        let answer: String?
        if self.questionary?[currentIndex].answer1?.isCorrect == true {
            answer = self.questionary?[currentIndex].answer1?.value
        } else if self.questionary?[currentIndex].answer2?.isCorrect == true {
            answer = self.questionary?[currentIndex].answer1?.value
        } else {
            answer = self.questionary?[currentIndex].answer3?.value
        }
        
        if let proposition = self.segmentedControlAnswer.titleForSegment(at: segmentedControlAnswer.selectedSegmentIndex),
            let question = self.questionary?[currentIndex].issue {
            if proposition == answer {
                self.score += 1
            }
            self.labelQuestion.text = question
        }
        
        self.segmentedControlAnswer.selectedSegmentIndex = -1
        currentIndex += 1
    }
    
    func fillLabelQuestion() {
        if let answer1 = self.questionary?[currentIndex].answer1,
            let answer2 = self.questionary?[currentIndex].answer2,
            let answer3 = self.questionary?[currentIndex].answer3,
            let question = self.questionary?[currentIndex].issue,
            let sumQuestion = self.questionary?.count {
            self.segmentedControlAnswer.setTitle(answer1.value, forSegmentAt: 0)
            self.segmentedControlAnswer.setTitle(answer2.value, forSegmentAt: 1)
            self.segmentedControlAnswer.setTitle(answer3.value, forSegmentAt: 2)
            self.labelQuestion.text = question
            self.labelNbrQuestion.text = "\(self.currentIndex + 1) / \(sumQuestion)"
        }
        
        // Previous question button
        if currentIndex == 0 {
            self.previousQuestionButton.setTitle("", for: .normal)
        } else {
            self.previousQuestionButton.setTitle(tr(.qtQuestionaryTimeViewControllerQuestionButton), for: .normal)
        }
    }
}
