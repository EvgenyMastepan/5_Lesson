//
//  FrostTable.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 30.06.2025.
//

import UIKit

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return self.firstDataTable.count
        } else {
            return self.secondDataTable.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        var config = cell.defaultContentConfiguration()
        var localArray: [TableItem] = []
        
        switch indexPath.section {
            case 0: localArray = self.firstDataTable
            default: localArray = self.secondDataTable
        }
        config.text = localArray[indexPath.row].title
        config.image = UIImage(named: localArray[indexPath.row].image)
        config.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        config.imageProperties.cornerRadius = 5
        config.secondaryText = localArray[indexPath.row].description
        cell.contentConfiguration = config
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section {
        case 0: return "Сценарии"
        default: return "Сценарии"
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Строения"
        default: return "Строения"
        }
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
