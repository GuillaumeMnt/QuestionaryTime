//
//  Questionary.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import UIKit
import Alamofire
import RealmSwift
import ObjectMapper
import AlamofireObjectMapper

class Questionary: Object, Mappable {

    // MARK: - Global

    // MARK: - Internal
    dynamic internal var identifier: NSNumber? = 0

    // MARK: - Mappable
    convenience required init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        self.identifier <- map["id"]
    }

    // MARK: - Model meta informations
    override class func primaryKey() -> String? {
        return "identifier"
    }

    override class func ignoredProperties() -> [String] {
        return []
    }
}

// MARK: - Questionary
extension Questionary {

    // MARK: - Network call

    // MARK: - Privates Functions

    // MARK: - Public Functions
}
