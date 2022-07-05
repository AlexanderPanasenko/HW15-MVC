//
//  Constraints.swift
//  HW15-MVC
//
//  Created by Alexander Panasenko on 05.07.2022.
//

import UIKit

extension UIView {
    
    func addSubviewsForAutoLayout(_ views: [UIView]) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
    }
}

