//
//  UserSetupViewController.swift
//  AEC Alumni
//
//  Created by Dhiraj Das on 3/13/18.
//  Copyright © 2018 Dhiraj Das. All rights reserved.
//

import UIKit

class UserSetupViewController: UIViewController {
    
    @IBOutlet var userSetupView: UserSetupView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userSetupView.delegate = self
    }
}

extension UserSetupViewController: UserSetupViewDelegate {
    
    func signInTapped(sender: Any) {
        
    }
    
    func createAccountTapped(sender: Any) {
        
    }
}

