//
//  SampleTextField.swift
//  Pilas
//
//  Created by Jonathan Samudio on 9/29/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class SampleTextField: UITextField {
    
    private let insets = UIEdgeInsetsMake(0, 15, 0, 15)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, insets)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, insets)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, insets)
    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false;
        placeholder = "Enter some text!"
        backgroundColor = UIColor.lightGray.withAlphaComponent(0.2)
        layer.cornerRadius = 6
        returnKeyType = UIReturnKeyType.done
    }
}
