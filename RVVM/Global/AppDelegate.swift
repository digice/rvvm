//
//  AppDelegate.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

@UIApplicationMain
/// The delegate for the `UIApplicationMain` singleton
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties
    
    var window: UIWindow?
    
    // MARK: - UIApplicationDelegate Methods
    
    /// Override point for customization
    /// - Parameter application: the UIApplication singleton
    /// - Parameter launchOptions: a dictionary of options
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            window.makeKeyAndVisible()
            let rootViewController = NavigationController()
            let router = RootRouter(rootViewController: rootViewController)
            window.rootViewController = rootViewController
            router.showFirst()
        }
        return true
    }
}
