//
//  QTLogger.swift
//  QuestionaryTime
//
//  Created by Guillaume Monot on 8/28/17
//  Copyright (c) 2017 mobizel. All rights reserved.
//
import Foundation
import SwiftyBeaver

// Create global variable for logs
let logger =  SwiftyBeaver.self

struct QTLogger {
  static func setup() {
    let console = ConsoleDestination()
    
    console.format = "$D[HH:mm:ss]$d $L - $N.$F:$l > $M"
    console.levelString.verbose = "📔 -- VERBOSE"
    console.levelString.debug = "📗 -- DEBUG"
    console.levelString.info = "📘 -- INFO"
    console.levelString.warning = "📙 -- WARNING"
    console.levelString.error = "📕 -- ERROR"
    
    logger.addDestination(console)
  }
}
