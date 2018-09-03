//
//  AddCardViewController.swift
//  Credit
//
//  Created by IOS Developer on 3/9/2561 BE.
//  Copyright © 2561 iCard.space. All rights reserved.
//

import UIKit

class AddCardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let card = ["KTB","SCT","KBANK","KBANK","KBANK","KBANK","KBANK","KBANK","KBANK","KBANK","KBANK"]
    let cardImages: [UIImage] = [
        UIImage(named: "creditCard")!,
        UIImage(named: "creditCard")!,
        UIImage(named: "creditCard")!,
        UIImage(named: "creditCard")!,
        UIImage(named: "creditCard")!,
        UIImage(named: "creditCard")!,
        UIImage(named: "creditCard")!,
        UIImage(named: "creditCard")!,
        UIImage(named: "creditCard")!,
        UIImage(named: "creditCard")!,
        UIImage(named: "creditCard")!,
        ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let itemSize = UIScreen.main.bounds.width/2 - 3;
        let itemHeight = itemSize*80/100
        
        let layout = UICollectionViewFlowLayout();
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemHeight)
        
        layout.minimumLineSpacing = 3
        layout.minimumInteritemSpacing = 3
        
        collectionView.collectionViewLayout = layout
        
        setCustomBackImage()
        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return card.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        
        cell.cardLabel.text = card[indexPath.item]
        cell.cardImageView.image = cardImages[indexPath.item]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
