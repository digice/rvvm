//
//  FirstViewModel.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import Foundation

/// Data handling for the first view
final class FirstViewModel {
    
    // MARK: - Properties
    
    /// The router that handles our navigation
    let router: FirstRouter
    
    /// Text for the "Next" button
    let nextText = "Next to Second"
    
    // MARK: - Methods
    
    /// Initialize the ViewModel
    /// 
    /// - Parameter router: The router that handles our navigation
    init(router: FirstRouter) {
        self.router = router
    }
}
