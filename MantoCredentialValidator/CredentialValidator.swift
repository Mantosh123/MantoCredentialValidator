//
//  CredentialValidator.swift
//  MantoCredentialValidator
//
//  Created by Mantosh Kumar on 25/09/24.
//

import Foundation


public struct CredentialValidator {
    
    public static func isValidEmail(email: String) -> Bool {
        // Regular expression pattern for a valid email id
        let emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    public static func isValidPassword(password: String) -> Bool {
        let passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHER %@", passwordRegex)
        return passwordPredicate.evaluate(with: password)
    }
    
    public static func sayHello() {
        print("Hello, Mr Mantosh Kumar")
    }
}
