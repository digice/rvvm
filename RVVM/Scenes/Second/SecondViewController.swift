//
//  SecondViewController.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    /// Where we keep the view's data
    let viewModel = SecondViewModel()
    
    /// Navigate to the previous view
    let backButton = Button()

    /// Navigate to the next view
    let nextButton = Button()

    /// Back Button Action
    /// - Parameter sender: the Button
    @objc func didTapBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    /// Next Button Action
    /// - Parameter sender: the Button
    @objc func didTapNext(_ sender: UIButton) {
        let third = ThirdViewController()
        self.navigationController?.pushViewController(third, animated: true)
    }
    
    /// Called when view property has been loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        view.addSubview(backButton)
        view.addSubview(nextButton)
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

}
