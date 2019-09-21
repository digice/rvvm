//
//  FirstViewController.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    /// Where we keep the view's data
    let viewModel = FirstViewModel()
    
    /// Navigate to the next view
    let nextButton = Button()
    
    /// Next Button Action
    /// - Parameter sender: the Button
    @objc func didTapNext(_ sender: UIButton) {
        let second = SecondViewController()
        self.navigationController?.pushViewController(second, animated: true)
    }
    
    /// Called when view property has been loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(nextButton)
        nextButton.setTitle(viewModel.nextText, for: .normal)
        nextButton.addTarget(
            self,
            action: #selector(FirstViewController.didTapNext(_:)),
            for: .touchUpInside
        )
        nextButton.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
        
        nextButton.centerYAnchor.constraint(
            equalTo: view.centerYAnchor,
            constant: 54.0
        ).isActive = true
    }

}
