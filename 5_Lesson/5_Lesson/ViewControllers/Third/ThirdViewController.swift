//
//  ThirdViewController.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 01.07.2025.
//

import UIKit

class ThirdViewController: UIViewController {
        let firstDataTable = TableItem.getFirstData()

        lazy var frostTable: UITableView = {
            $0.dataSource = self
            $0.delegate = self
            $0.register(UITableViewCell.self, forCellReuseIdentifier: TableItem.cellName)
            $0.backgroundView = UIImageView(image: UIImage(named: "background"))
            return $0
        }(UITableView(frame: view.frame, style: .insetGrouped))
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemGray
            view.addSubview(frostTable)
            
        }

    }
