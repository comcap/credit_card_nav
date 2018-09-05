//
//  HomePrivilegeViewController.swift
//  Credit
//
//  Created by IOS Developer on 9/4/18.
//  Copyright © 2018 iCard.space. All rights reserved.
//

import UIKit

class HomePrivilegeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectviewHome: UICollectionView!
    
    let listCate = ["สิทธิพิเศษทั้งหมดของฉัน","ร้านอาหาร","ช็อปปิ้ง","การเดินทาง","สุขภาพ","ปั้มน้ำมัน","โรงแรม ที่พัก","บริการอื่น ๆ","อาบน้ำ"]
    let imagesCate: [UIImage] = [
        UIImage(named: "ribbin-icon")!,
        UIImage(named: "ribbin-icon")!,
        UIImage(named: "ribbin-icon")!,
        UIImage(named: "ribbin-icon")!,
        UIImage(named: "ribbin-icon")!,
        UIImage(named: "ribbin-icon")!,
        UIImage(named: "ribbin-icon")!,
        UIImage(named: "ribbin-icon")!,
        UIImage(named: "ribbin-icon")!,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectviewHome.dataSource = self
        collectviewHome.delegate = self
        
        collectviewHome!.contentInset = UIEdgeInsets(top: 5, left: 25, bottom: 30, right: 25) // Padding of collectviewHome
        
        let itemSize = UIScreen.main.bounds.width/2-35;
        let itemHeight = itemSize*70/100
        
        let layout = UICollectionViewFlowLayout();
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemHeight)
        
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 3
        
//        collectviewHome.layer.masksToBounds = false
        
        
        collectviewHome.collectionViewLayout = layout
        
        
        setCustomBackImage()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return listCate.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectviewHome.dequeueReusableCell(withReuseIdentifier: "CellItem", for: indexPath) as! HomeCollectionViewCell
        
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowRadius = 3
        cell.layer.shadowOpacity = 0.3
        cell.layer.shadowOffset = CGSize(width: 3, height: 3)
        
        cell.labelListHome.text = listCate[indexPath.item]
        cell.imageListHome.image = imagesCate[indexPath.item]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setCustomBackImage(){
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}






