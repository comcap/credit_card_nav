//
//  ExchangeViewController.swift
//  Credit
//
//  Created by IOS Developer on 9/4/18.
//  Copyright © 2018 iCard.space. All rights reserved.
//

import UIKit

class ExchangeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var collectionviewExchange: UICollectionView!
    
    let titleNameExchange = ["ขายสิทธิ อาบน้ำ 1 แถมหนึ่ง สถานที่ xxxxxx","ส่วนลดเที่ยวคาราโอเกะ 40 %","xxxxxxxxx","xxxxxxxxxxxxxxxx","xxxxxxxxxxxxxx","xxxxxxxxxxxxx","xxxxxxxxxxxxxx","xxxxxxxxxxxxxx","xxxxxxxxxxxxxx"]
    
    let imagesModelExchange: [UIImage] = [
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

        collectionviewExchange.dataSource = self
        collectionviewExchange.delegate = self
        
        collectionviewExchange!.contentInset = UIEdgeInsets(top: 10, left: 25, bottom: 30, right: 25) // Padding of collectviewHome
        
        let itemSize = UIScreen.main.bounds.width-35;
        let itemHeight = itemSize*69/100
        
        let layout = UICollectionViewFlowLayout();
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemHeight)
        
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 3
        
        collectionviewExchange.collectionViewLayout = layout
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return titleNameExchange.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionviewExchange.dequeueReusableCell(withReuseIdentifier: "cellExchange", for: indexPath) as! ExchangeCollectionViewCell
        
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowRadius = 3
        cell.layer.shadowOpacity = 0.3
        cell.layer.shadowOffset = CGSize(width: 1, height: 3)
        
        cell.titleListExchang.text = titleNameExchange[indexPath.item]
        cell.imageListExchang.image = imagesModelExchange[indexPath.item]
        
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
