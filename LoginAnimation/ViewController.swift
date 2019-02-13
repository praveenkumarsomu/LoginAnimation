//
//  ViewController.swift
//  LoginAnimation
//
//  Created by Praveenkumar Somu on 13/2/2562 BE.
//  Copyright © 2562 Praveenkumar Somu. All rights reserved.
//

import UIKit
import TransitionButton

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginAction(_ sender: TransitionButton) {
        sender.startAnimation()
        let qualityOfServiceClass = DispatchQoS.QoSClass.background
        let backgroundQueue = DispatchQueue.global(qos: qualityOfServiceClass)
        backgroundQueue.async(execute: {
            
            sleep(3) // 3: Do your networking task or background work here.
            
            DispatchQueue.main.async(execute: { () -> Void in
                // 4: Stop the animation, here you have three options for the `animationStyle` property:
                // .expand: useful when the task has been compeletd successfully and you want to expand the button and transit to another view controller in the completion callback
                // .shake: when you want to reflect to the user that the task did not complete successfly
                // .normal
                sender.stopAnimation(animationStyle: .expand, completion: {
                    let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeVC")
                    self.navigationController?.present(secondVC, animated: true, completion: nil)
                })
            })
        })
    }
    
}

