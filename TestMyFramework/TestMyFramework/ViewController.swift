//
//  ViewController.swift
//  TestMyFramework
//
//  Created by Mantosh Kumar on 25/09/24.
//

import UIKit
import MantoCredentialValidator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CredentialValidator.sayHello()
        
        let isValidMyEmail = CredentialValidator.isValidEmail(email: "kumar.mantosh@gmail.com")
        debugPrint("isValidMyEmail = \(isValidMyEmail)")

        let isValidMyPassword = CredentialValidator.isValidPassword(password: "12343434Man")
        debugPrint("isValidMyPassword = \(isValidMyPassword)")

    }


}

