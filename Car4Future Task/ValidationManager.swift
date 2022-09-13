//
//  ValidationManager.swift
//  Car4Future Task
//
//  Created by Baran Göcen on 13.09.2022.
//

import Foundation

class ValidationManager {
    
    static func validateEmailId(myStr: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        return applyPredicateOnRegex(myStr: myStr, regexStr:  emailRegEx)
    }
    
    static func validatePassword(myStr: String) -> Bool {
        
        
        let min = 4
        let passRegEx = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{\(min),}$"
            
        
        return applyPredicateOnRegex(myStr: myStr, regexStr:  passRegEx)
    }
    
    
    static func applyPredicateOnRegex(myStr: String,regexStr: String) -> Bool{
        let trimmedString = myStr.trimmingCharacters(in: .whitespaces)
        let validateOtherString = NSPredicate(format: "SELF MATCHES %@", regexStr)
        let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
        return isValidateOtherString
    }
    
    
    
}
