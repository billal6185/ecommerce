//
//  SingupViewController.swift
//  ecommerce
//
//  Created by sdmgap3 on 1/6/20.
//  Copyright © 2020 sdm. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SingupViewController: UIViewController {
    
    @IBOutlet weak var passwordTFsingup: UITextField!
    @IBOutlet weak var emailTFsingup: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func singupButton(_ sender: Any) {
        
        if let email = emailTFsingup.text,let password = passwordTFsingup.text {
            Auth.auth().createUser(withEmail: email, password: password) { (Users, Error) in
                
                if let firbeseError = Error {
                    print(firbeseError.localizedDescription)
            }
                print("success")
            
        }
    }
    

}
}
