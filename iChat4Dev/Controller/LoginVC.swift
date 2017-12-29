//
//  LoginVC.swift
//  iChat4Dev
//
//  Created by Lingeswaran Kandasamy on 12/25/17.
//  Copyright © 2017 Lingeswaran Kandasamy. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTxtField: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTxtField.delegate = self
    }
    
    @IBAction func signInBtnTapped(_ sender: Any) {
        if emailTextField != nil && passwordTxtField != nil {
            AuthService.instance.loginUser(withEmail: emailTextField.text!, andPassword: passwordTxtField.text!, loginComplete: {(success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
                AuthService.instance.registerUser(withEmail: self.emailTextField.text!, andPassword: self.passwordTxtField.text!, userCreationComplete: {(success, registerError) in
                    if success {
                        AuthService.instance.loginUser(withEmail: self.emailTextField.text!, andPassword: self.passwordTxtField.text!, loginComplete: {(success,nil) in
                            self.dismiss(animated: true, completion: nil)
                            print("Successfuly Registered User")
                        })
                    } else {
                        print(String(describing: registerError?.localizedDescription))
                    }
                })
            })
        }
    }
    
    @IBAction func closeBtnTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension LoginVC: UITextFieldDelegate {
    
}
