//
//  ViewController.swift
//  MyWeather
//
//  Created by Sergey on 10.02.17.
//  Copyright © 2017 Sergey Kostyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        heightConstraint.isActive = false
        UIView.animate(withDuration: 0.5) { [weak self] completed in
            guard let strongSelf = self else { return }
            strongSelf.view.layoutIfNeeded()
        }
    }
}
