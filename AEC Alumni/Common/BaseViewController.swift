//
//  BaseViewController.swift
//  AEC Alumni
//
//  Created by Dhiraj Das on 3/14/18.
//  Copyright © 2018 Dhiraj Das. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        customizeNavigationBar()
    }

    private func customizeNavigationBar() {
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.leftBarButtonItem = backBarButton()
        navigationItem.leftBarButtonItem?.tintColor = UIColor.black
    }
    
    private func backBarButton() -> UIBarButtonItem {
        let image = UIImage(named: "back")
        let button = UIBarButtonItem(image: image,
                                     style: .plain,
                                     target: self,
                                     action: #selector(SELbackButtonTapped(sender:)))
        return button
    }
    
    @objc private func SELbackButtonTapped(sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
}
