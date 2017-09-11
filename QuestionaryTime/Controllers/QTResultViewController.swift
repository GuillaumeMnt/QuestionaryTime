//
//  QTResultViewController.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import UIKit

class QTResultViewController: UIViewController {
    
    // MARK: - Global
    var score: Int = 0
    var nbrOfQuestion: Int = 0
    
    // MARK: - Privates
    
    // MARK: - IBOutlet
    @IBOutlet fileprivate weak var labelResultAnswer: UILabel!
    @IBOutlet fileprivate weak var tfEnterName: UITextField!
    @IBOutlet fileprivate weak var buttonPushInfo: UIButton!
    
    // MARK: - Application Lifecyle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        self.navigationController?.navigationBar.isHidden = true
        self.buttonPushInfo.addTarget(self, action: #selector(pushInfoPlayer), for: .touchDown)
    }
    
    // MARK: - Navigation
    
}

// MARK: - QTResultViewController
extension QTResultViewController {

    // MARK: - Configurations
    fileprivate func setup() {
        self.automaticallyAdjustsScrollViewInsets = false
        self.labelResultAnswer.textAlignment = .center
        labelResultAnswer.text = "you have : \(self.score) good answers on \(nbrOfQuestion)"
    }
    
    @objc
    fileprivate func pushInfoPlayer() {
        
        if let length = self.tfEnterName.text?.length() {
            if length > 0 {
                let player: Player = Player()
                player.generateIdentifier()
                
                if let name = self.tfEnterName.text {
                    player.firstname = name
                }
                player.score = self.score
                player.addToRealm()
                show(StoryboardScene.Game.instantiateQtGameViewController(), sender: self)
            }
        }
    }
    
    // MARK: - Privates Functions
}
