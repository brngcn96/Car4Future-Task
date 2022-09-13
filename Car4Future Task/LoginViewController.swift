//
//  LoginViewController.swift
//  Car4Future Task
//
//  Created by Baran Göcen on 13.09.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        if ValidationCode(){
            
        }
    }
    
    


}


extension LoginViewController{
     func ValidationCode() -> Bool{
        if let email = usernameTextField.text, let password = passwordTextField.text{
            if !ValidationManager.validateEmailId(myStr: email){
                AlertManager.openAlert(viewController: self,title: "Alert", message: "Email address not found.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay clicked!")
                }])
                
                return false
                
            }else if !ValidationManager.validatePassword(myStr: password){
                AlertManager.openAlert(viewController: self,title: "Alert", message: "Please enter valid password", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay clicked!")
                }])
                
                return false
                
            }else{
                return true
            }
        }else{
            AlertManager.openAlert(viewController: self,title: "Alert", message: "Please add detail.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                print("Okay clicked!")
            }])
            return false
        }
    }
}
