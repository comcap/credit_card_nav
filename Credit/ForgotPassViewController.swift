//
//  ForgotPassViewController.swift
//  Credit
//
//  Created by IOS Developer on 9/6/18.
//  Copyright © 2018 iCard.space. All rights reserved.
//

import UIKit

class ForgotPassViewController: UIViewController , UITextFieldDelegate {

   
    @IBOutlet weak var inputPhone: TextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputPhone.layer.masksToBounds = false
        inputPhone.layer.shadowRadius = 0.7
        inputPhone.layer.shadowOffset = CGSize(width: 0, height: 1)
        inputPhone.layer.shadowOpacity = 0.8
        inputPhone.layer.shadowColor = UIColor.black.cgColor
        
        
        
        setCustomBackImage()

        // Do any additional setup after loading the view.
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


