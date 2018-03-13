//
//  UserSetupView.swift
//  AEC Alumni
//
//  Created by Dhiraj Das on 3/13/18.
//  Copyright © 2018 Dhiraj Das. All rights reserved.
//

import UIKit

protocol UserSetupViewDelegate: class {
    func createAccountTapped(sender: Any)
    func signInTapped(sender: Any)
}

class UserSetupView: UIView {
    
    @IBOutlet weak var createAccountButton: RoundedButton!
    @IBOutlet weak var signInButton: RoundedButton!
    
    weak var delegate: UserSetupViewDelegate?
    
    @IBAction func createAccountTapped(_ sender: Any) {
        delegate?.createAccountTapped(sender: sender)
    }
    
    @IBAction func signInTapped(_ sender: Any) {
        delegate?.signInTapped(sender: sender)
    }
}
