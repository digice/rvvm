//
//  SecondRouter.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

final class SecondRouter: UIRouter {
 
    // MARK: - Properties
    
    /// Where we will send routing requests to
    var rootRouter: RootRouter
    
    // MARK: - SecondRouter
    
    /// Next navigation
    func next() {
        rootRouter.showThird()
    }
    
    /// Back navigation
    func back() {
        rootRouter.dismissSecond()
    }

    // MARK: - UIRouter
    
    /// UIRouter init
    ///
    /// - Parameter rootRouter: the RootRouter instance
    required init(rootRouter: RootRouter) {
        self.rootRouter = rootRouter
    }

    /// Factory method to make `SecondViewController` with injected dependencies
    ///
    /// - Parameter rootRouter: RootRouter instance
    ///
    /// - Returns: an instance of `SecondViewController`
    ///
    /// The `ViewController` requires a reference to the viewModel
    /// but rather than instantiating it directly, this method will
    /// create the viewModel, with its dependency on `SecondRouter`,
    /// which in turn depends on an instance of `RootRouter`
    static func viewController(rootRouter: RootRouter) -> UIViewController {
        let router = SecondRouter(rootRouter: rootRouter)
        let viewModel = SecondViewModel(router: router)
        return SecondViewController(viewModel: viewModel)
    }
    
}
