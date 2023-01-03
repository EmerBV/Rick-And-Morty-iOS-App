//
//  Extensions.swift
//  Rick And Morty
//
//  Created by Emerson Balahan Varona on 3/1/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
