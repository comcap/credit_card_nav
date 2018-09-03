//
//  RegisterViewController.swift
//  Credit
//
//  Created by IOS Developer on 9/1/18.
//  Copyright © 2018 iCard.space. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var navigationBar: UINavigationBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        username.layer.masksToBounds = false
        username.layer.shadowRadius = 0.7
        username.layer.shadowOffset = CGSize(width: 0, height: 1)
        username.layer.shadowOpacity = 0.8
        username.layer.shadowColor = UIColor.black.cgColor
        
        password.layer.masksToBounds = false
        password.layer.shadowRadius = 0.7
        password.layer.shadowOffset = CGSize(width: 0, height: 1)
        password.layer.shadowOpacity = 0.8
        password.layer.shadowColor = UIColor.black.cgColor
        
        confirmPassword.layer.masksToBounds = false
        confirmPassword.layer.shadowRadius = 0.7
        confirmPassword.layer.shadowOffset = CGSize(width: 0, height: 1)
        confirmPassword.layer.shadowOpacity = 0.8
        confirmPassword.layer.shadowColor = UIColor.black.cgColor
        
        phone.layer.masksToBounds = false
        phone.layer.shadowRadius = 0.7
        phone.layer.shadowOffset = CGSize(width: 0, height: 1)
        phone.layer.shadowOpacity = 0.8
        phone.layer.shadowColor = UIColor.black.cgColor

        setCustomBackImage()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(_ sender: UIBarButtonItem) {
    
        self.navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
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


