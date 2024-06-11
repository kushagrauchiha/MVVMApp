//
//  UIViewExtensions.swift
//  MVVMApp
//
//  Created by Kushagra Mishra on 11/06/24.
//
import Foundation
import UIKit

extension UIView {
    func round( _ radious: CGFloat = 10) {
        self.layer.cornerRadius = radious
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
}
