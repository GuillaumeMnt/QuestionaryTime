//
//  Answer.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import UIKit
import RealmSwift

class Answer: Object {
    
    // MARK: - Global
    
    // MARK: - Internal
    dynamic internal var identifier: NSNumber? = 0
    dynamic internal var value: String?
    dynamic internal var isCorrect: Bool = false
    
    // MARK: - Mappable
    convenience required init(value: String, isCorrect: Bool = false) {
        self.init()
        
        self.value = value
        self.isCorrect = isCorrect
    }
    
    // MARK: - Model meta informations
    //    override class func primaryKey() -> String? {
    //        return "identifier"
    //    }
    
    override class func ignoredProperties() -> [String] {
        return [""]
    }
}

// MARK: - Answer
extension Answer {
    
    // MARK: - Network call
    
    // MARK: - Privates Functions
    
    // MARK: - Public Functions
}
