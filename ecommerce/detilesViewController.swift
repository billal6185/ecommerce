//
//  detilesViewController.swift
//  ecommerce
//
//  Created by sdmgap3 on 1/11/20.
//  Copyright © 2020 sdm. All rights reserved.
//

import UIKit

class detilesViewController: UIViewController {
    
    @IBOutlet weak var detilesprice: UILabel!
    @IBOutlet weak var detilesimagename: UILabel!
    @IBOutlet weak var detilesimageview: UIImageView!
    var getname: String?
    var getimage: String?
    var getprice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let getname = getname, let getimage = getimage, let getprice = getprice else {
            return
        }
        detilesprice.text = getprice
        detilesimagename.text = getname
        detilesimageview.image = UIImage(named: getimage + ".jpeg" )
        
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
