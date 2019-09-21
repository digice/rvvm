//
//  SecondViewController.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Properties
    
    /// Where we keep the view's data
    let viewModel: SecondViewModel
    
    // MARK: - Outlets / Subviews
    
    /// Navigate to the previous view
    private let backButton = Button()

    /// Navigate to the next view
    private let nextButton = Button()

    /// Back Button Action
    ///
    /// - Parameter sender: the Button
    @objc func didTapBack(_ sender: UIButton) {
        viewModel.router.back()
    }
    
    // MARK: - Actions / Selectors
    
    /// Next Button Action
    /// 
    /// - Parameter sender: the Button
    @objc func didTapNext(_ sender: UIButton) {
        viewModel.router.next()
    }

    // MARK: - SecondViewController
    
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
            action: #selector(SecondViewController.didTapBack(_:)),
            for: .touchUpInside
        )

        nextButton.addTarget(
            self,
            action: #selector(SecondViewController.didTapNext(_:)),
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
        view.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        setupViews()
        setupConstraints()
    }

}
