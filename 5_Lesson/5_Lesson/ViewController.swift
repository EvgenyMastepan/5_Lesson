//
//  ViewController.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 30.06.2025.
//

import UIKit

class ViewController: UIViewController {
    let firstDataTable = TableItem.getFirstData()
    let secondDataTable = TableItem.getSecondData()

    lazy var frostTable: UITableView = {
        $0.dataSource = self
        $0.delegate = self
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return $0
    }(UITableView(frame: view.frame, style: .insetGrouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        view.addSubview(frostTable)
        
    }

}

