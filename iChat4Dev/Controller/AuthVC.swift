//
//  AuthVC.swift
//  iChat4Dev
//
//  Created by Lingeswaran Kandasamy on 12/25/17.
//  Copyright © 2017 Lingeswaran Kandasamy. All rights reserved.
//

import UIKit
import Firebase

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }
    @IBAction func signInWithEmailBtnPressed(_ sender: Any) {
        let loginVCa = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVCa!, animated: true, completion: nil)
      
    }
    @IBAction func googleSignInBtnPressed(_ sender: Any) {
    }
    @IBAction func fbSignInBtnPressed(_ sender: Any) {
    }
}
