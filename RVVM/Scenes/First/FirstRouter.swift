//
//  FirstRouter.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

final class FirstRouter: UIRouter {

    // MARK: - Properties
    
    /// Where we will send routing requests to
    var rootRouter: RootRouter
    
    // MARK: - FirstRouter

    /// Next navigation
    func next() {
        rootRouter.showSecond()
    }
    
    /// Back navigation
    func back() {
        // no back action is possible from First module
    }
    
    // MARK: - UIRouter
    
    /// UIRouter init
    ///
    /// - Parameter rootRouter: the RootRouter instance
    required init(rootRouter: RootRouter) {
        self.rootRouter = rootRouter
    }

    /// Factory method to make `FirstViewController` with injected dependencies
    ///
    /// - Parameter rootRouter: RootRouter instance
    ///
    /// - Returns: an instance of `FirstViewController`
    ///
    /// The `ViewController` requires a reference to the viewModel
    /// but rather than instantiating it directly, this method will
    /// create the viewModel, with its dependency on `FirstRouter`,
    /// which in turn depends on an instance of `RootRouter`
    static func viewController(rootRouter: RootRouter) -> UIViewController {
        let router = FirstRouter(rootRouter: rootRouter)
        let viewModel = FirstViewModel(router: router)
        return FirstViewController(viewModel: viewModel)
    }

}
