//
//  ViewController.swift
//  AlertMessageProject
//
//  Created by Felipe Augusto Correia on 01/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var checkPasswordText: UITextField!
    
    var myUserName = ""
    var myPassWord = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        let userNameAlert = UIAlertController(title: "Error", message: "Username not found.", preferredStyle: UIAlertController.Style.alert)
        
        let passWordAlert = UIAlertController(title: "Error", message: "Password not found.", preferredStyle: UIAlertController.Style.alert)
        
        let samePassWordAlert = UIAlertController(title: "Error", message: "Password is not the same.", preferredStyle: UIAlertController.Style.alert)
        
        let sucessAlert = UIAlertController(title: "Sucess", message: "Sucefull Login!", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // OK Button clicked
            print("Button Clicked.")
        }
        
        userNameAlert.addAction(okButton)
        passWordAlert.addAction(okButton)
        samePassWordAlert.addAction(okButton)
        sucessAlert.addAction(okButton)
        
        if myUserName == userNameText.text {
            self.present(userNameAlert, animated: true, completion: nil)
        } else {
            if myPassWord == passwordText.text {
                self.present(passWordAlert, animated: true, completion: nil)
            } else {
                if passwordText.text != checkPasswordText.text {
                    self.present(samePassWordAlert, animated: true, completion: nil)
                } else {
                    self.present(sucessAlert, animated: true, completion: nil)
                }
            }
        }
    }
}

