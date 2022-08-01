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
        
        if myUserName == userNameText.text {
            makeAlert(title: "Error", message: "Username not Found.")
        } else {
            if myPassWord == passwordText.text {
                makeAlert(title: "Error", message: "Password not Found.")
            } else {
                if passwordText.text != checkPasswordText.text {
                    makeAlert(title: "Error", message: "Password do not match.")
                } else {
                    makeAlert(title: "Sucess", message: "Login OK")
                }
            }
        }
    }
    
    func makeAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}

