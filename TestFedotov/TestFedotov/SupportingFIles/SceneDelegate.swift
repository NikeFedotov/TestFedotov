//
//  SceneDelegate.swift
//  TestFedotov
//
//  Created by Nikita Fedotov on 23.09.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let appInfo = AppInfo()
        let viewModel = AppViewModel(appInfo: appInfo)
        let viewController = AppViewController(viewModel: viewModel)
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }

}

