//
//  HomeViewController.swift
//  LoginAnimation
//
//  Created by Praveenkumar Somu on 13/2/2562 BE.
//  Copyright © 2562 Praveenkumar Somu. All rights reserved.
//

import UIKit
import TransitionButton

class HomeViewController: CustomTransitionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
