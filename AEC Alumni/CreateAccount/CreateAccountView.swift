//
//  CreateAccountView.swift
//  AEC Alumni
//
//  Created by Dhiraj Das on 3/13/18.
//  Copyright © 2018 Dhiraj Das. All rights reserved.
//

import UIKit

class CreateAccountView: UIView {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var nextButton: UIView!
    
    var keyboardState: KeyboardState?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        KeyboardHelper.defaultHelper.addDelegate(self)
        nextButton.layer.cornerRadius = nextButton.frame.width / 2
    }
}

extension CreateAccountView: KeyboardHelperDelegate {
    func keyboardHelper(_ keyboardHelper: KeyboardHelper, keyboardWillShowWithState state: KeyboardState) {
        keyboardState = state
        let padding: CGFloat = 70.0
        let coveredHeight = state.intersectionHeightForView(self) + padding
        UIView.animate(withDuration: state.animationDuration) {
            UIView.setAnimationCurve(state.animationCurve)
            self.scrollView.contentInset.bottom = coveredHeight
        }
    }
    
    func keyboardHelper(_ keyboardHelper: KeyboardHelper, keyboardDidShowWithState state: KeyboardState) {
    
    }
    
    func keyboardHelper(_ keyboardHelper: KeyboardHelper, keyboardWillHideWithState state: KeyboardState) {
        keyboardState = nil
        scrollView.contentInset.bottom = 0
    }
}


