//
//  RootRouter.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import Foundation

class RootRouter {
 
    // MARK: - Properties
    
    let navigationController: NavigationController
    
    // MARK: - RootRouter
    
    /// Initialize the RootRouter instance
    /// - Parameter rootViewController: The top ViewController of the view stack
    init(rootViewController: NavigationController) {
        self.navigationController = rootViewController
    }
    
    // MARK: - Navigation
    
    /// Navigate to the first view at startup
    func showFirst() {
        navigationController.pushViewController(
            FirstRouter.viewController(rootRouter: self),
            animated: false
        )
    }
    
    /// Navigate to the second view from the first view
    func showSecond() {
        let viewController = SecondRouter.viewController(rootRouter: self)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    /// Navigate to the virst view from the second view
    func dismissSecond() {
        navigationController.popViewController(animated: true)
    }
    
    /// Navigate to the third view from the second view
    func showThird() {
        let viewController = ThirdRouter.viewController(rootRouter: self)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    /// Navigate to the second view from the third view
    func dismissThird() {
        navigationController.popViewController(animated: true)
    }
    
}
