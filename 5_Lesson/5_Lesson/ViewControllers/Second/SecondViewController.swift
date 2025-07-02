//
//  SecondViewController.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 01.07.2025.
//

import UIKit

class SecondViewController: UIViewController {
    let lindemannDataTable = LindemannData.getData()

    lazy var lindemannTable: UITableView = {
        $0.dataSource = self
        $0.delegate = self
        $0.register(UITableViewCell.self, forCellReuseIdentifier: LindemannData.cellName)
        return $0
    }(UITableView(frame: view.frame, style: .insetGrouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(lindemannTable)
        
    }

}
