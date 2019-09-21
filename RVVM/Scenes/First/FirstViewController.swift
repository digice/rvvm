//
//  FirstViewController.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: - Properties

    /// Where we keep the view's data
    let viewModel: FirstViewModel

    // MARK: - Outlets / Subviews

    /// Navigate to the next view
    let nextButton = Button()
    

    // MARK: - Actions / Selectors

    /// Next Button Action
    ///
    /// - Parameter sender: the Button
    @objc func didTapNext(_ sender: UIButton) {
        self.viewModel.router.next()
    }
    
    // MARK: - FirstViewController
    
    /// Custom Initializer
    init(viewModel: FirstViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    /// Call this in `viewDidLoad()` after configuring the view
    private func setupViews() {
        nextButton.setTitle(viewModel.nextText, for: .normal)
        nextButton.accessibilityIdentifier = "next_button"
        nextButton.accessibilityLabel = "Advances to the second view"
        
        nextButton.addTarget(
            self,
            action: #selector(FirstViewController.didTapNext(_:)),
            for: .touchUpInside
        )
        
        view.addSubview(nextButton)
    }

    /// Call this after `setupViews()` to set and activate AutoLayout constraints
    private func setupConstraints() {
        nextButton.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
        
        nextButton.centerYAnchor.constraint(
            equalTo: view.centerYAnchor,
            constant: 54.0
        ).isActive = true
    }

    // MARK: - UIViewController
    
    /// Required Initializer (should never be called)
    ///
    /// - Parameter coder: A Decoder
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// Called when view property has been loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }

}
