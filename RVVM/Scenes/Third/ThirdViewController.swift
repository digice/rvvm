//
//  ThirdViewController.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

/// Controller for the third view
class ThirdViewController: UIViewController {

    // MARK: - Properties
    
    /// Where we keep the view's data
    let viewModel: ThirdViewModel
    
    // MARK: - Subviews
    
    /// Navigate to the previous view
    let backButton = Button()
    
    // MARK: - Actions
    
    /// Back Button Action
    /// 
    /// - Parameter sender: the Button
    @objc func didTapBack(_ sender: Button) {
        viewModel.router.back()
    }

    // MARK: - Methods
    
    /// Custom Initializer
    init(viewModel: ThirdViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    /// Call this in `viewDidLoad()` after configuring the view
    private func setupViews() {
        backButton.setTitle(viewModel.backText, for: .normal)
        
        backButton.addTarget(
            self,
            action: Action.didTapBack,
            for: .touchUpInside
        )
        
        view.addSubview(backButton)
    }

    /// Call this after `setupViews()` to set and activate AutoLayout constraints
    private func setupConstraints() {
        backButton.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
        
        backButton.centerYAnchor.constraint(
            equalTo: view.centerYAnchor,
            constant: -54.0
        ).isActive = true
    }
    
    // MARK: - UIViewController Methods
    
    /// Required Initializer (should never be called)
    ///
    /// - Parameter coder: A Decoder
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// Called after the view controller has loaded its view hierarchy into memory.
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        setupViews()
        setupConstraints()
    }
}

/// Selectors
extension ThirdViewController {

    /// Abstracts ugly `#selector` syntax away from implementation
    struct Action {

        /// Selector for the back button action
        static let didTapBack = #selector(ThirdViewController.didTapBack(_:))
    }
}
