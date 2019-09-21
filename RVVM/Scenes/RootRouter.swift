//
//  RootRouter.swift
//  RVVM
//
//  Created by Digices LLC on 9/21/19.
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import Foundation

class RootRouter {
    
    let navigationController: NavigationController
    
    init(rootViewController: NavigationController) {
        self.navigationController = rootViewController
    }
    
    func showFirst() {
        let viewModel = FirstViewModel(router: self)
        let viewController = FirstViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func showSecond() {
        let viewModel = SecondViewModel(router: self)
        let viewController = SecondViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func dismissSecond() {
        navigationController.popViewController(animated: true)
    }
    
    func showThird() {
        let viewModel = ThirdViewModel(router: self)
        let viewController = ThirdViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func dismissThird() {
        navigationController.popViewController(animated: true)
    }
    
}
