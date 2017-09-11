//
//  Constants.swift
//  QuestionaryTime
//
//  Created by Guillaume Monot on 8/28/17
//  Copyright (c) 2017 mobizel. All rights reserved.
//

import UIKit

enum Constants {
    
    // MARK: - UITextField
    enum UITextField {
        static let padding: CGFloat = 16.0
    }
    
    static let NbQuestions: Int = 5
    
    static let StopTimer: Bool = false
    
    enum GameState {
        case inProgress, overNotPerfect, overPerfect
    }
    
    enum AlertButton {
        case winner, loser
    }
}
