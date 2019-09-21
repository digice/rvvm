//
//  ThirdViewModel.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import Foundation

class ThirdViewModel {

    // MARK: - Properties

    /// The router that handles our navigation
    let router: ThirdRouter

    /// Text for the "Back" button
    let backText = "Back To Second"

    /// Initialize the ViewModel
    /// 
    /// - Parameter router: The The router that handles our navigation
    init(router: ThirdRouter) {
        self.router = router
    }

}
