//
//  Player.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import UIKit
import RealmSwift

class Player: Object {
    
    // MARK: - Global
    
    // MARK: - Internal
    dynamic internal var identifier: String = ""
    dynamic internal var firstname: String?
    dynamic internal var score: Int = 0
    
    // MARK: - Mappable
    convenience init(firstname: String, score: Int) {
        self.init()
        self.firstname = firstname
        self.score = score
    }
    
    // MARK: - Model meta informations
    override class func primaryKey() -> String? {
        return "identifier"
    }
    
    override class func ignoredProperties() -> [String] {
        return []
    }
    
    func generateIdentifier() {
        self.identifier = String(Date().timeIntervalSince1970)
    }
    
}

// MARK: - Player
extension Player {
    
    // MARK: - Network call
    
    // MARK: - Privates Functions
    
    // MARK: - Public Functions
}
