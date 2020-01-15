//
//  customViewController.swift
//  ecommerce
//
//  Created by sdmgap3 on 1/6/20.
//  Copyright © 2020 sdm. All rights reserved.
//

import UIKit

class customViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
        
    var name = ["image1","image2","image3","image4","image5","image6","image7","image8","image9","image10","image11","image12"]
var price = ["$20","#25","$30","$35","$40","$45","$50","$55","$60","$65","$70","$75"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return name.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)as! customCollectionViewCell
//        cell.lableview.text = name[indexPath.row]
//        cell.pricelable.text = price [indexPath.row]
//        cell.imageview.image = UIImage(named: name[indexPath.row] + ".jpeg")
        return cell
    }

    

}
