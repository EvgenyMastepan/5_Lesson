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
        config.textProperties.color = .systemBlue
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

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var localArray: [TableItem] = []
        switch indexPath.section {
            case 0: localArray = firstDataTable
            default: localArray = secondDataTable
        }
//        print("Section: ", indexPath.section, "Row: ", indexPath.row)
//        print(localArray[indexPath.row].title)
//        print(localArray[indexPath.row].description ?? "")
        
        let alert = UIAlertController(
                    title: localArray[indexPath.row].title,
                    message: localArray[indexPath.row].description ?? "",
                    preferredStyle: .alert
                )
        alert.addAction(UIAlertAction(title: "Да понял-понял.", style: .default))
                self.present(alert, animated: true)
    }
}
