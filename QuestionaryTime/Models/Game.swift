//
//  Game.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import UIKit
import RealmSwift

class Game: Object {
    
    // MARK: - Global
    
    // MARK: - Internal
    dynamic internal var identifier: NSNumber? = 0
    dynamic internal var player: Player?
    dynamic internal var questionary: Questionary?
    dynamic internal var score: Float = 0
    dynamic internal var date: String?
    dynamic internal var time: Int = 0
    var gameState: Constants.GameState?
    //    dynamic internal var timer: Timer?
    
    // MARK: - Mappable
    convenience required init(player: Player, questionary: Questionary,
                              gameState: Constants.GameState = .inProgress) {
        self.init()
        
        self.player = player
        self.questionary = questionary
        self.gameState = gameState
        self.score = 0.0
    }
    
    // MARK: - Model meta informations
    override class func primaryKey() -> String? {
        return "identifier"
    }
    
    override class func ignoredProperties() -> [String] {
        return []
    }
}

// MARK: - Game
extension Game {
    
    // MARK: - Network call
    
    // MARK: - Privates Functions
    
    // MARK: - Public Functions
    
    // isGameOver
    func isGameOver() -> Bool {
        return gameState == Constants.GameState.overNotPerfect ? true : false
    }
}
