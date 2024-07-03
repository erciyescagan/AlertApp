//
//  ViewController.swift
//  AlertApp
//
//  Created by Mert Erciyes Çağan on 5/28/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordAgainField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        let title = "Error"
        var message = ""
      
        
        if usernameField.text == "" {
            message = "User not found!"
        }
        
         else if passwordField.text == "" {
            message = "Password couldnt be empty!"
        }
        
        else if passwordField.text != passwordAgainField.text {
            message = "The given passwords don't match!"
        }
       
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default) { UIAlertAction in
            print("clicked Ok button")
        }
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

