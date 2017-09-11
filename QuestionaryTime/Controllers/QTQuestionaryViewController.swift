//
//  QTQuestionaryViewController.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import UIKit

class QTQuestionaryViewController: UIViewController {

    // MARK: - Global

    // MARK: - Privates

    // MARK: - IBOutlet

    // MARK: - Application Lifecyle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let identifier = segue.identifier,
            let segueIdentifier = StoryboardSegue.<#StoryboardName#>(rawValue: identifier) {
            switch segueIdentifier {
            default:
                break
            }
        }
    }
}

// MARK: - QTQuestionaryViewController
extension QTQuestionaryViewController {

    // MARK: - Configurations
    fileprivate func setup() {
        self.automaticallyAdjustsScrollViewInsets = false

    }

    // MARK: - Privates Functions

}
