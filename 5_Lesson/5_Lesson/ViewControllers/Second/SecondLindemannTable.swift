//
//  SecondLindemannTable.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 02.07.2025.
//

import UIKit

extension SecondViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        lindemannDataTable.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        lindemannDataTable[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LindemannData.cellName, for: indexPath)
        let localTableData = lindemannDataTable[indexPath.section][indexPath.row]
        
        var config = cell.defaultContentConfiguration()
        config.text = localTableData.song
        config.textProperties.color = .systemBlue
        config.image = UIImage(systemName: "music.note.list")
        config.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        config.imageProperties.cornerRadius = 5
        config.secondaryText = localTableData.desc
        cell.contentConfiguration = config
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        lindemannDataTable[section][0].album
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        
        header.textLabel?.textColor = .red
        header.textLabel?.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        header.backgroundView?.backgroundColor = .systemBlue
    }
}

extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let localTableData = lindemannDataTable[indexPath.section][indexPath.row]

        let alert = UIAlertController(
                    title: localTableData.song,
                    message: localTableData.desc ?? "",
                    preferredStyle: .alert
                )
        alert.addAction(UIAlertAction(title: "Industrial metal!.", style: .default))
                self.present(alert, animated: true)
    }
}

