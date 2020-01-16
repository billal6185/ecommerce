//
//  ViewController.swift
//  ecommerce
//
//  Created by sdmgap3 on 1/6/20.
//  Copyright © 2020 sdm. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    @IBOutlet weak var passwordTextfild: UITextField!
    @IBOutlet weak var emailTextfild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    
    @IBAction func loginButton(_ sender: Any) {
        
        if let email = emailTextfild.text,let password = passwordTextfild.text{

            Auth.auth().signIn(withEmail: email, password: password) { (Users, Error) in
                if Users != nil
                {
                    self.performSegue(withIdentifier: "homeSegue", sender: nil)
                }
                else {
                    let alert = UIAlertController(title: "there was a problem", message: nil, preferredStyle: .alert)
                    let okButton = UIAlertAction(title: "done", style: .default, handler: nil)
                    alert.addAction(okButton)
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }
    }
}

        
    
    


