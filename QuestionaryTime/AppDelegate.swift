//
//  AppDelegate.swift
//  QuestionaryTime
//
//  Created by Guillaume Monot on 8/28/17
//  Copyright (c) 2017 mobizel. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics
import IQKeyboardManager

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        /* IQKeyboardManager Setup */
        IQKeyboardManagerSetup()

        /* Analytics Setup */
        #if !DEBUG
            addAnalytics()
        #endif

        /* Logger */
        QTLogger.setup()

        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }
}

extension AppDelegate {

    fileprivate func IQKeyboardManagerSetup() {
        IQKeyboardManager.shared().isEnabled = true
        IQKeyboardManager.shared().shouldShowTextFieldPlaceholder = false
        IQKeyboardManager.shared().toolbarDoneBarButtonItemText = "close"
    }

    fileprivate func addAnalytics() {
        Fabric.with([Crashlytics.self()])
    }
}
