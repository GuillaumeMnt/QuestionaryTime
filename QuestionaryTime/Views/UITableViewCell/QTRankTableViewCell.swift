//
//  QTRankTableViewCell.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import UIKit

class QTRankTableViewCell: UITableViewCell {

    // MARK: Global

    // MARK: Privates

    // MARK: IBOutlet
    @IBOutlet fileprivate weak var labelRank: UILabel!
    @IBOutlet fileprivate weak var labelName: UILabel!
    @IBOutlet fileprivate weak var labelScore: UILabel!

    // MARK: Life cycle
    override func awakeFromNib() {
        super.awakeFromNib()

        setup()
    }
}

// MARK: - QTRankTableViewCell
extension QTRankTableViewCell {

    // MARK: - Configurations
    fileprivate func setup() {
    
        // Label rank
        self.labelRank.textAlignment = .center
        
        // Label name
        self.labelName.textAlignment = .center
        
        // Label score
        self.labelScore.textAlignment = .left
    }

    // MARK: - Privates Functions

    // MARK: - Public Functions
    
    func applyLabelInfo(_ player: Player, score: Int) {
        
        self.labelRank.text = String(score)
        self.labelName.text = player.firstname
        self.labelScore.text = String(player.score)
    }
}
