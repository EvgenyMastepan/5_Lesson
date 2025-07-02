//
//  ThirdFrostTable.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 02.07.2025.
//

import UIKit

extension ThirdViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        firstDataTable.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        firstDataTable[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableItem.cellName, for: indexPath)
        let localTableData = firstDataTable[indexPath.section][indexPath.row]
        
        var config = cell.defaultContentConfiguration()
        config.text = localTableData.title
        config.textProperties.color = .systemBlue
        config.image = UIImage(named: localTableData.image)
        config.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        config.imageProperties.cornerRadius = 5
        config.secondaryText = localTableData.description
        cell.contentConfiguration = config
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section {
            case 0: return "Сценарии"
            default: return "Строения"
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
            case 0: return "Сценарии"
            default: return "Строения"
        }
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        
        header.textLabel?.textColor = .white
        header.textLabel?.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        header.backgroundView?.backgroundColor = .systemBlue
    }
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        guard let footer = view as? UITableViewHeaderFooterView else { return }
        
        footer.textLabel?.textColor = .black
        footer.textLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        footer.backgroundView?.backgroundColor = .systemBlue
    }
    
}

extension ThirdViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let localTableData = firstDataTable[indexPath.section][indexPath.row]
        
// MARK: -- Отладочный код.
//        print("Section: ", indexPath.section, "Row: ", indexPath.row)
//        print(localArray[indexPath.row].title)
//        print(localArray[indexPath.row].description ?? "")

        let alert = UIAlertController(
                    title: localTableData.title,
                    message: localTableData.description ?? "",
                    preferredStyle: .alert
                )
        alert.addAction(UIAlertAction(title: "Да понял-понял.", style: .default))
                self.present(alert, animated: true)
    }
}
