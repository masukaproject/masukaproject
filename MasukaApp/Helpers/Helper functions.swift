//
//  Helper functions.swift
//  MasukaApp
//
//  Created by Achraf Boufennara on 2021-08-31.
//

import Foundation
import UIKit

class Helpers {
    
    static func passwordCheck(_ password : String) -> Bool {
        // Checks if password is secure using REGEX
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    static func emailCheck(_ email: String) -> Bool {
        // Checks if email is valid using REGEX
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}

