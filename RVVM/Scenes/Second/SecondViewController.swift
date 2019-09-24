//
//  SecondViewController.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

/// Controller for the second view to appear
class SecondViewController: UIViewController {

    // MARK: - Properties
    
    /// Where we keep the view's data
    let viewModel: SecondViewModel
    
    // MARK: - Subviews
    
    /// Navigate to the previous view
    private let backButton = Button()

    /// Navigate to the next view
    private let nextButton = Button()

    // MARK: - Actions

    /// Back Button Action
    ///
    /// - Parameter sender: the Button
    @objc func didTapBack(_ sender: UIButton) {
        viewModel.router.back()
    }
    
    /// Next Button Action
    /// 
    /// - Parameter sender: the Button
    @objc func didTapNext(_ sender: UIButton) {
        viewModel.router.next()
    }

    // MARK: - Methods
    
    /// Custom Initializer
    init(viewModel: SecondViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    /// Call this in `viewDidLoad()` after configuring the view
    private func setupViews() {
        nextButton.setTitle(viewModel.nextText, for: .normal)
        backButton.setTitle(viewModel.backText, for: .normal)

        backButton.addTarget(
            self,
            action: Action.didTapBack,
            for: .touchUpInside
        )

        nextButton.addTarget(
            self,
            action: Action.didTapNext,
            for: .touchUpInside
        )
        
        view.addSubview(backButton)
        view.addSubview(nextButton)
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
        
        nextButton.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
        
        nextButton.centerYAnchor.constraint(
            equalTo: view.centerYAnchor,
            constant: 54.0
        ).isActive = true
    }
    
    // MARK: - UIViewController Methods
    
    /// Required Initializer (should never be called)
    ///
    /// - Parameter coder: A Decoder
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// Called when view property has been loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        setupViews()
        setupConstraints()
    }
}

/// Selectors
extension SecondViewController {

    /// Abstracts ugly `#selector` syntax away from implementation
    struct Action {
        
        /// Selector for the back button action
        static let didTapBack = #selector(SecondViewController.didTapBack(_:))

        /// Selector for the next button action
        static let didTapNext = #selector(SecondViewController.didTapNext(_:))
    }
}
