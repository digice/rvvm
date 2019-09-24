//
//  UIRouter.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

/// Required properties and methods for a module's Router
protocol NavigationRouter {

    /// Strong reference to the `RootRouter`
    var rootRouter: RootRouter { get }
    
    /// Required `init` which accepts the `RootRouter` instance
    ///
    /// - Parameter rootRouter: the `RootRouter` instance
    ///
    /// The instance of `RootRouter` may depend on factors determined
    /// at runtime, i.e. what device we are running on, what target is
    /// selected, whether we are in staging of production. Rather than
    /// letting the instance of `UIRouter` determine its own dependency
    /// this method is required to receive an injected dependency.
    init(rootRouter: RootRouter)
    
    /// Factory method to create the module's `ViewController`
    ///
    /// - Parameter rootRouter: The `RootRouter` instance
    static func createViewController(rootRouter: RootRouter) -> UIViewController

}
