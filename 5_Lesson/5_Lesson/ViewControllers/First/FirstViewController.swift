//
//  ViewController.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 30.06.2025.
//

import UIKit

class FirstViewController: UIViewController {
    var townDataTable = TownData.getData()

    lazy var townTable: UITableView = {
        $0.dataSource = self
        $0.delegate = self
        $0.register(UITableViewCell.self, forCellReuseIdentifier: TownData.cellName)
        return $0
    }(UITableView(frame: view.frame, style: .insetGrouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(townTable)
        
    }

}

