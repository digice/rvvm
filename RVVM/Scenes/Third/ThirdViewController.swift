//
//  ThirdViewController.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    /// Where we keep the view's data
    let viewModel: ThirdViewModel
    
    /// Navigate to the previous view
    let backButton = Button()
    
    /// Back Button Action
    /// - Parameter sender: the Button
    @objc func didTapBack(_ sender: Button) {
        viewModel.router.dismissThird()
    }

    /// Custom Initializer
    init(viewModel: ThirdViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    /// Required Initializer (should never be called)
    /// - Parameter coder: A Decoder
    required init?(coder: NSCoder) {
        self.viewModel = ThirdViewModel(
            router: RootRouter(
                rootViewController: NavigationController()
            )
        )
        super.init(coder: coder)
    }
    

    /// Called when view property has been loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        view.addSubview(backButton)
        backButton.setTitle(viewModel.backText, for: .normal)
        backButton.addTarget(
            self,
            action: #selector(ThirdViewController.didTapBack(_:)),
            for: .touchUpInside
        )
        backButton.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
        
        backButton.centerYAnchor.constraint(
            equalTo: view.centerYAnchor,
            constant: -54.0
        ).isActive = true
    }

}
