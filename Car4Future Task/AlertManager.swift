//
//  AlertManager.swift
//  Car4Future Task
//
//  Created by Baran Göcen on 13.09.2022.
//

import Foundation
import UIKit

class AlertManager{
    
    static func openAlert(viewController: UIViewController,title: String,
                          message: String,
                          alertStyle:UIAlertController.Style,
                          actionTitles:[String],
                          actionStyles:[UIAlertAction.Style],
                          actions: [((UIAlertAction) -> Void)]){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: alertStyle)
        
        
        for(index, indexTitle) in actionTitles.enumerated(){
            let action = UIAlertAction(title: indexTitle, style: actionStyles[index], handler: actions[index])
            alertController.addAction(action)
        }
        
        viewController.present(alertController, animated: true)
    }
    
    
}
