//
//  QTAPI.swift
//  QuestionaryTime
//
//  Created by Guillaume Monot on 28/8/17
//  Copyright (c) 2017 mobizel. All rights reserved.
//

import Foundation

/// QuestionaryTime's API
enum QuestionaryTimeAPI {

    /**
     API base URL
     - URL = https://
     */
    static let baseURL: String = "https://"

    ///
    static let test: String = "/test"
}

/// QuestionaryTime's URL
enum QuestionaryTimeURL {

    /// Facebook
    static let facebook: URL? = URL(string: "https://facebook.com/QuestionaryTime")
}

// MARK: - QuestionaryTime's API Debug
enum QuestionaryTimeAPIDebug {

    /// Test account
    enum Account {
        static let username: String = ""
        static let password: String = ""
    }
}
