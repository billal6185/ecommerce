//
//  sidemenuViewController.swift
//  ecommerce
//
//  Created by sdmgap3 on 1/21/20.
//  Copyright © 2020 sdm. All rights reserved.
//

import UIKit

class sidemenuViewController: UIViewController {
    @IBOutlet weak var viewmenu: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewmenu.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func menuaction(_ sender: Any) {
        if viewmenu.isHidden {
            animate(toogle: true)
        }else{
            animate(toogle: false)
        }
    }
    
    func animate(toogle: Bool){
        if toogle {
        UIView.animate(withDuration: 0.1) {
            self.viewmenu.isHidden = false
             }
        }else{
            UIView.animate(withDuration: 0.1) {
                self.viewmenu.isHidden = true
            }
        }
    }
}
