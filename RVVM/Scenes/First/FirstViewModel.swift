//
//  FirstViewModel.swift
//  RVVM
//
//  Author: Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import Foundation

class FirstViewModel {
    
    /// The router that handles our navigation
    let router: RootRouter
    
    /// Text for the "Next" button
    let nextText = "Next to Second"
    
    /// Initialize the ViewModel
    /// - Parameter router: The The router that handles our navigation
    init(router: RootRouter) {
        self.router = router
    }
    
}
