//
//  Question.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import UIKit
import RealmSwift

class Question: Object {
    
    // MARK: - Global
    
    // MARK: - Internal
    dynamic internal var identifier: NSNumber? = 0
    dynamic internal var issue: String?
    dynamic internal var answer1: Answer?
    dynamic internal var answer2: Answer?
    dynamic internal var answer3: Answer?
    
    // MARK: - Mappable
    convenience init(index: NSNumber, issue: String, allAnswer: [Answer]) {
        self.init()
        
        self.identifier = index
        self.issue = issue
        
        self.answer1 = allAnswer[0]
        self.answer2 = allAnswer[1]
        self.answer3 = allAnswer[2]
    }
    
    // MARK: - Model meta informations
    override class func primaryKey() -> String? {
        return "identifier"
    }
    
    override class func ignoredProperties() -> [String] {
        return []
    }
}

// MARK: - Question
extension Question {
    
    // MARK: - Network call
    
    // MARK: - Privates Functions
    
    // MARK: - Public Functions

}
