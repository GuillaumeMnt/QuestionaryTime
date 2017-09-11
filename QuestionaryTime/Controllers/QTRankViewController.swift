//
//  QTRankViewController.swift
//  QuestionaryTime
//
//  Created by Guillaume on 29/08/2017.
//  Copyright © 2017 mobizel. All rights reserved.
//

import RealmSwift
import UIKit

class QTRankViewController: UIViewController {

    // MARK: - Global

    // MARK: - Privates
    static fileprivate let reuseIdentifier = "reuseIdentifier"
    fileprivate var rank: Results<Player>?
    
    // MARK: - IBOutlet
    @IBOutlet fileprivate weak var labelTitle: UILabel!
    @IBOutlet fileprivate weak var tvRank: UITableView!

    // MARK: - Application Lifecyle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        rank = RealmHelper.objects(type: Player.self)?.sorted(byKeyPath: "score", ascending: false)
        self.tvRank.delegate = self
        self.tvRank.dataSource = self
        self.tvRank.registerNib(nibName: "QTRankTableViewCell", reuseIdentifier: QTRankViewController.reuseIdentifier)
        setup()
    }

    // MARK: - Navigation
}

// MARK: - QTRankViewController
extension QTRankViewController {

    // MARK: - Configurations
    fileprivate func setup() {
        self.labelTitle.text = tr(.qtGameViewControllerTitleLabel).capitalized
        self.labelTitle.textAlignment = .center
        self.automaticallyAdjustsScrollViewInsets = false
    }

    // MARK: - Privates Functions

}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension QTRankViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let number = rank?.count {
            return number
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: QTRankViewController.reuseIdentifier, for: indexPath) as? QTRankTableViewCell,
            let list = rank {
            if indexPath.row % 2 == 0 {
                cell.backgroundColor = UIColor(named: .ashGrey)
            }
            cell.applyLabelInfo(list[indexPath.row], score: indexPath.row + 1)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if cell.responds(to: #selector(setter: UITableViewCell.separatorInset)) {
            cell.separatorInset = .zero
        }
        
        if cell.responds(to: #selector(setter: UIView.preservesSuperviewLayoutMargins)) {
            cell.preservesSuperviewLayoutMargins = false
        }
        
        if cell.responds(to: #selector(setter: UIView.layoutMargins)) {
            cell.layoutMargins = .zero
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let cell: UITableViewCell = tableView.cellForRow(at: indexPath) {
            if cell is QTRankTableViewCell {
                
            }
        }
    }
}
