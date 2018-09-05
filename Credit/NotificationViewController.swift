//
//  NotificationViewController.swift
//  Credit
//
//  Created by IOS Developer on 9/4/18.
//  Copyright © 2018 iCard.space. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionviewNoti: UICollectionView!
    
    let titleName = ["บริการนวดฟรี 1 คืน พร้อมเลขาส่วนตัว","ส่วนลด Night Club 30%","xxxxxxxxx","xxxxxxxxxxxxxxxx","xxxxxxxxxxxxxx","xxxxxxxxxxxxx","xxxxxxxxxxxxxx","xxxxxxxxxxxxxx","xxxxxxxxxxxxxx"]
    
    let imagesModel: [UIImage] = [
        UIImage(named: "bedroom")!,
        UIImage(named: "bedroom")!,
        UIImage(named: "bedroom")!,
        UIImage(named: "bedroom")!,
        UIImage(named: "bedroom")!,
        UIImage(named: "bedroom")!,
        UIImage(named: "bedroom")!,
        UIImage(named: "bedroom")!,
        UIImage(named: "bedroom")!,
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionviewNoti.dataSource = self
        collectionviewNoti.delegate = self
        
        collectionviewNoti!.contentInset = UIEdgeInsets(top: 10, left: 25, bottom: 30, right: 25) // Padding of collectviewHome
        
        let itemSize = UIScreen.main.bounds.width-35;
        let itemHeight = itemSize*69/100
        
        let layout = UICollectionViewFlowLayout();
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemHeight)

        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 3
        
        collectionviewNoti.collectionViewLayout = layout
        
//        setCustomBackImage()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return titleName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionviewNoti.dequeueReusableCell(withReuseIdentifier: "cellNoti", for: indexPath) as! NotificationCollectionViewCell
        
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowRadius = 3
        cell.layer.shadowOpacity = 0.3
        cell.layer.shadowOffset = CGSize(width: 1, height: 3)
        
        cell.titleNameNoti.text = titleName[indexPath.item]
        cell.imageListNoti.image = imagesModel[indexPath.item]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
