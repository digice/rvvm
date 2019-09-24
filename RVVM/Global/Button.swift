//
//  Button.swift
//  RVVM
//
//  Created by Roderic Linguri <linguri@digices.com>
//  Copyright © 2019 Digices LLC. All rights reserved.
//

import UIKit

/// A subclass of `UIButton` with a system blue background
/// 12px corner radius and white text.
class Button: UIButton {
    
    /// Initialize a new Button instance
    init() {
        super.init(frame: CGRect.zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBlue
        contentEdgeInsets = UIEdgeInsets(top: 8.0, left: 12.0, bottom: 8.0, right: 12.0)
        layer.cornerRadius = 12.0
        setTitleColor(.white, for: .normal)
    }
    
    /// Designated initializer
    ///
    /// - Parameter frame: Where the view should appear
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    /// Required initializer (not implemented)
    /// 
    /// - Parameter frame: Where the view should appear
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
