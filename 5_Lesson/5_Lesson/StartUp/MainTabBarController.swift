//
//  MainTabBarController.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 01.07.2025.
//

import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        customizeTabBar()
        self.delegate = self
    }
    
    private func setupTabs() {
        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        let thirdVC = ThirdViewController()
        
        firstVC.title = "Cities"
        secondVC.title = "Lindemann Songs"
        thirdVC.title = "Frostpunk"
        
        firstVC.tabBarItem = UITabBarItem(
            title: "Towns",
            image: UIImage(systemName: "flag.square.fill"),
            tag: 0
        )
        secondVC.tabBarItem = UITabBarItem(
            title: "Lindemann",
            image: UIImage(systemName: "music.microphone.circle.fill"),
            tag: 1
        )
        thirdVC.tabBarItem = UITabBarItem(
            title: "FrostPunk",
            image: UIImage(systemName: "snowflake.circle.fill"),
            tag: 2
        )
        let nav1 = UINavigationController(rootViewController: firstVC)
        let nav2 = UINavigationController(rootViewController: secondVC)
        let nav3 = UINavigationController(rootViewController: thirdVC)

        setViewControllers([nav1, nav2, nav3], animated: true)
    }
    
    private func customizeTabBar() {
          tabBar.tintColor = .systemBlue
          tabBar.unselectedItemTintColor = .gray
          tabBar.backgroundColor = .systemBackground
      }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if let navController = viewController as? UINavigationController {
            navController.visibleViewController?.navigationItem.title = navController.topViewController?.title
        }
    }
}
