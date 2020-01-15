//
//  sidemanuViewController.swift
//  ecommerce
//
//  Created by sdmgap3 on 1/15/20.
//  Copyright © 2020 sdm. All rights reserved.
//

import UIKit
protocol slideMenudelegate {
    func slidemenuItemAtIndex(_ index :Int32)
}

class SidemenuViewController: UIViewController {
    
    var btnmenu : UIButton!
    var delegat : slideMenudelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
