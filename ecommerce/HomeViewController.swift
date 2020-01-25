//
//  HomeViewController.swift
//  ecommerce
//
//  Created by sdmgap3 on 1/7/20.
//  Copyright © 2020 sdm. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var cview1: UICollectionView!
    @IBOutlet weak var cview2: UICollectionView!
    
    var productname = ["50%off","t shirt","shirt","shoe","pant"]
    
var name = ["image1","image2","image3","image4","image5","image6","image7","image8","image9","image10","image11","image12",]
    
    var price = ["$10","$20","$35","$40","$45","$50","$55","$60","$65","$70","$75","$80",]
    
    var indexNo: Int?

    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == cview1{
            
            return name.count
        }
        return productname.count
    }
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if collectionView == cview1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)as!customCollectionViewCell
            cell.lableview.text = name[indexPath.row]
            cell.priceview.text = price [indexPath.row]
            cell.imageview.image = UIImage(named: name[indexPath.row] + ".jpeg")
            return cell
           }
            else{
                let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell2", for: indexPath)as!productCollectionViewCell
                cell2.productLB.text = productname [indexPath.row]
                cell2.productimage.image = UIImage(named: productname [indexPath.row] + ".jpeg")
                return cell2
            }
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        indexNo = indexPath.item

            performSegue(withIdentifier: "detilesview", sender: self)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    let vc = segue.destination as! detilesViewController
    guard let indexNo = indexNo else{
        return
    }
    vc.getname = name[indexNo]
    vc.getimage = name[indexNo]
        vc.getprice = price[indexNo]
        }
    
        }
        
extension ViewController : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 5) / 2
        let height = width
        
        return CGSize(width: width, height: height)
    }
    
    
}


