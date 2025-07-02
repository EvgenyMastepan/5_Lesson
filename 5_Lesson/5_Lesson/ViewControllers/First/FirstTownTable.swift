//
//  FirstTownTable.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 02.07.2025.
//

import UIKit

extension FirstViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        townDataTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TownData.cellName, for: indexPath)
        let localTableData = townDataTable[indexPath.row]
        
        var config = cell.defaultContentConfiguration()
        config.text = localTableData.name
        config.textProperties.color = .systemBlue
        config.image = UIImage(systemName: localTableData.iconName)
        config.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        config.imageProperties.cornerRadius = 5
        cell.contentConfiguration = config
        
        return cell
    }
}

extension FirstViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let localTableData = townDataTable[indexPath.row]

        let alert = UIAlertController(
                    title: localTableData.name,
                    message: "Go on",
                    preferredStyle: .alert
                )
        alert.addAction(UIAlertAction(title: "Ok!.", style: .default))
                self.present(alert, animated: true)
    }
}


