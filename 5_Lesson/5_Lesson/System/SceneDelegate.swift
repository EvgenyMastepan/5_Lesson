//
//  SceneDelegate.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 30.06.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: scene)
        self.window?.rootViewController = MainTabBarController()
        self.window?.makeKeyAndVisible()
    }



}

