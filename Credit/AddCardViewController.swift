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
    @IBOutlet weak var searchBar: UISearchBar!
    
//    let card = ["KTB","SCT","KBANK","KBANK","KBANK","KBANK","KBANK","KBANK","KBANK","KBANK","KBANK"]
    var tableArray = [String] ()
    
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
        searchBar.layer.masksToBounds = false
        searchBar.layer.shadowRadius = 0.8
        searchBar.layer.shadowOffset = CGSize(width: 0, height: 3)
        searchBar.layer.shadowOpacity = 0.75
        searchBar.layer.shadowColor = UIColor.black.cgColor
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        
        let itemSize = UIScreen.main.bounds.width/2 - 3;
        let itemHeight = itemSize*75/100
        
        let layout = UICollectionViewFlowLayout();
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemHeight)
        
        layout.minimumLineSpacing = 3
        layout.minimumInteritemSpacing = 3
        
        collectionView.collectionViewLayout = layout
        setCustomBackImage()
        fethData()
        
        self.hideKeyboardWhenTappedAround()


        // Do any additional setup after loading the view.
    }

    
    func fethData() {
        let url = URL(string: "https://www.baskettoy.net/getData")
        
        let session = URLSession.shared
        session.dataTask(with: url!) { (data, response, error) in
            guard error == nil else {
                print("returned error")
                return
            }
            
            if error != nil{

            }else {
                print("returned error")
            }
            
            guard let content = data else {
                
                print("No data")
                return
            }
            
            guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
                print("Not containing JSON")
                return
            }
            
            if let array = json["data"] as? [String] {
                self.tableArray = array
            }
            
            print(self.tableArray)
            
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            
        }.resume()
    
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

extension AddCardViewController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.tableArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        
        cell.cardLabel.text = self.tableArray[indexPath.item]
        cell.cardImageView.image = cardImages[indexPath.item]
        
        return cell
    }
    
}


