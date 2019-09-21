//
//  NavigationController.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    /// Called when view property has been loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBarHidden(true, animated: false)
    }
    
}
