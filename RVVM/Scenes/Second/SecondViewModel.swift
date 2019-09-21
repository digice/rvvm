//
//  SecondViewModel.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import Foundation

class SecondViewModel {

    // MARK: - Properties

    /// The router that handles our navigation
    let router: SecondRouter

    /// Text for the "Back" button
    let backText = "Back to First"

    /// Text for the "Next" button
    let nextText = "Next to Third"

    // MARK: - SecondViewModel
    
    /// Initialize the ViewModel
    /// 
    /// - Parameter router: The The router that handles our navigation
    init(router: SecondRouter) {
        self.router = router
    }

}
