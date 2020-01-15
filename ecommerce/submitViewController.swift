//
//  submitViewController.swift
//  ecommerce
//
//  Created by sdmgap3 on 1/13/20.
//  Copyright © 2020 sdm. All rights reserved.
//

import UIKit
import Firebase

class submitViewController: UIViewController {
    
    var name = [String]()
    
    @IBOutlet weak var phonenumberTF: UITextField!
    @IBOutlet weak var koriaTF: UITextField!
    
    @IBOutlet weak var postalcodeTF: UITextField!
    @IBOutlet weak var homedistrictTF: UITextField!
    @IBOutlet weak var districtTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    var db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitButton(_ sender: Any) {
        
        performSegue(withIdentifier: "submittopayment", sender: self)
        
        db.collection("Users").document().setData([
            "City" : cityTF.text ?? "City",
            "district" : districtTF.text ?? "district",
            "homedistrict" : homedistrictTF.text ?? "homedistrict",
            "postal" : postalcodeTF.text ?? "postal",
            "phone" : phonenumberTF.text ?? "phone",
            "koria" : koriaTF.text ?? "koria",
        ]) { (Error) in
            print("Error : ")
            
        }
        
    }
    

}
