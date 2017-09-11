//
//  Questionary.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import UIKit
import RealmSwift

class Questionary: Object {
    
    // MARK: - Global
    
    // MARK: - Internal
    dynamic internal var identifier: NSNumber? = 0
    dynamic internal var question1: Question?
    dynamic internal var question2: Question?
    dynamic internal var question3: Question?
    dynamic internal var question4: Question?
    dynamic internal var question5: Question?
    
    // MARK: - Mappable
    convenience required init(allQuestions: [Question]) {
        self.init()
        
        self.question1 = allQuestions[0]
        self.question2 = allQuestions[1]
        self.question3 = allQuestions[2]
        self.question4 = allQuestions[3]
        self.question5 = allQuestions[4]
        
    }
    
    // MARK: - Model meta informations
    override class func primaryKey() -> String? {
        return "identifier"
    }
    
    override class func ignoredProperties() -> [String] {
        return [""]
    }
}

// MARK: - Questionary
extension Questionary {
    
    // MARK: - Network call
    
    // MARK: - Privates Functions
    
    // MARK: - Public Functions
}
