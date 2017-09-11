//
//  QTGameViewController.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import UIKit

class QTGameViewController: UIViewController {
  
    // MARK: - Global
    var player: Player?
    var question: Question?
    
    // MARK: - Privates
    
    // MARK: - IBOutlet
    @IBOutlet fileprivate weak var titleLabel: UILabel!
    @IBOutlet fileprivate weak var playButton: UIButton!
    @IBOutlet fileprivate weak var playRanking: UIButton!
    
    // MARK: - Application Lifecyle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
}

extension QTGameViewController {
    
    // MARK: - Configurations
    fileprivate func setup() {
        self.automaticallyAdjustsScrollViewInsets = false
        
        self.playButton.addTarget(self, action: #selector(playQuestionary), for: .touchDown)
        self.playRanking.addTarget(self, action: #selector(playRank), for: .touchDown)
        setupDesign()
    }
    
    // MARK: - Privates Functions
    private func prepareData() {
        
        RealmHelper.remove(type: Questionary.self)
        
        let allAnswers: [Answer] = [
            Answer(value: "yes", isCorrect: true),
            Answer(value: "no"),
            Answer(value: "maybe")
        ]
        var allQuestionsList: [Question] = [Question]()
        let question1: Question = Question(index: 0, issue: "Are you real ?", allAnswer: allAnswers)
        let question2: Question = Question(index: 1, issue: "Are we living in the matrix ?", allAnswer: allAnswers)
        let question3: Question = Question(index: 2, issue: "What is the color of the white horse of Henri IV ?", allAnswer: allAnswers)
        let question4: Question = Question(index: 3, issue: "Apple > Android ?", allAnswer: allAnswers)
        let question5: Question = Question(index: 4, issue: "Am I awesome ?", allAnswer: allAnswers)
        
        allQuestionsList.append(question1)
        allQuestionsList.append(question2)
        allQuestionsList.append(question3)
        allQuestionsList.append(question4)
        allQuestionsList.append(question5)
        
        allQuestionsList.shuffle()
        let questionary: Questionary = Questionary(allQuestions: allQuestionsList)
        questionary.addToRealm()
        
    }
    
    private func setupDesign() {
        
        // Background color
        self.view.backgroundColor = UIColor(named: .gray)
        
        // Title label
        self.titleLabel.text = tr(.qtGameViewControllerTitleLabel).uppercased()
        self.titleLabel.textAlignment = .center
        
        // Play button
        self.playButton.backgroundColor = UIColor(named: .white)
        self.playButton.alpha = 0.5
        self.playButton.layer.cornerRadius = 0.5 * playButton.frame.width
        self.playButton.setTitle(tr(.qtGameViewControllerPlayButton).capitalizingFirstLetter(), for: .normal)
        
        // Play ranking
        self.playRanking.backgroundColor = UIColor(named: .white)
        self.playRanking.alpha = 0.5
        self.playRanking.layer.cornerRadius = 0.5 * playRanking.frame.width
        self.playRanking.setTitle(tr(.qtGameViewControllerRankButton).capitalizingFirstLetter(), for: .normal)
    }
    
    @objc private func playQuestionary() {
        prepareData()
        performSegue(withIdentifier: StoryboardSegue.Game.goToGame.rawValue, sender: self)
    }
    
    @objc private func playRank() {
        show(StoryboardScene.Game.instantiateQtRankViewController(), sender: self)
        print("yeah")
    }
}
