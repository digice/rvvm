//
//  ThirdRouter.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

/// Navigation for the third view
final class ThirdRouter: NavigationRouter {

    // MARK: - Properties
    
    /// Where we will send routing requests to
    var rootRouter: RootRouter
    
    // MARK: - Methods
    
    /// Next navigation
    func next() {
        // no next action is possible from Third module
    }
    
    /// Back navigation
    func back() {
        rootRouter.dismissThird()
    }
    
    // MARK: - NavigationRouter Methods
    
    /// NavigationRouter init
    ///
    /// - Parameter rootRouter: the RootRouter instance
    required init(rootRouter: RootRouter) {
        self.rootRouter = rootRouter
    }
    
    /// Factory method to populate ThirdViewController
    ///
    /// - Parameter rootRouter: RootRouter instance
    ///
    /// - Returns: ThirdViewController
    ///
    /// The `ViewController` requires a reference to the viewModel
    /// but rather than instantiating it directly, this method will
    /// create the viewModel, with its dependency on `ThirdRouter`,
    /// which in turn depends on an instance of `RootRouter`
    static func createViewController(rootRouter: RootRouter) -> UIViewController {
        let router = ThirdRouter(rootRouter: rootRouter)
        let viewModel = ThirdViewModel(router: router)
        return ThirdViewController(viewModel: viewModel)
    }
}
