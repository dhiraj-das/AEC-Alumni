//
//  RoundedButton.swift
//  AlamoDrafthouse
//
//  Created by Dhiraj Das on 3/13/18.
//  Copyright © 2018 Dhiraj Das. All rights reserved.
//

import UIKit

@IBDesignable public class RoundedButton: UIButton {
    
    @IBInspectable var borderColor: UIColor = UIColor.teal() {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 5.0 {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var title: String? {
        didSet {
            setupView()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public override var isEnabled: Bool {
        didSet {
            if isEnabled == true {
                layer.borderColor = borderColor.cgColor
                tintColor = borderColor
            } else {
                layer.borderColor = borderColor.withAlphaComponent(0.5).cgColor
                tintColor = borderColor.withAlphaComponent(0.5)
            }
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    func setupView() {
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        layer.cornerRadius = cornerRadius
        setTitle(title, for: .normal)
        setTitle(title, for: .selected)
        setTitle(title, for: .highlighted)
    }
}
