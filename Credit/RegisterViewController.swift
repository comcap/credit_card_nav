//
//  RegisterViewController.swift
//  Credit
//
//  Created by IOS Developer on 9/1/18.
//  Copyright © 2018 iCard.space. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usename: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var phone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        let customNavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 200))
        self.view.addSubview(customNavigationBar)

        usename.layer.masksToBounds = false
        usename.layer.shadowRadius = 0.7
        usename.layer.shadowOffset = CGSize(width: 0, height: 1)
        usename.layer.shadowOpacity = 0.8
        usename.layer.shadowColor = UIColor.black.cgColor
        
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
        self.hideKeyboardWhenTappedAround()
        print("1")
        // Do any additional setup after loading the view.
    }

    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        moveTextField(textField, moveDistance: -140, up: true)
    }

    // Finish Editing The Text Field
    func textFieldDidEndEditing(_ textField: UITextField) {
        moveTextField(textField, moveDistance: -140, up: false)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usename {
            textField.resignFirstResponder()
            password.becomeFirstResponder()
        } else if textField == password {
            textField.resignFirstResponder()
            confirmPassword.becomeFirstResponder()
        } else if textField == confirmPassword {
            textField.resignFirstResponder()
            phone.becomeFirstResponder()
        } else if textField == phone {
            textField.resignFirstResponder()
        }
        return true
    }
    
    func moveTextField(_ textField: UITextField, moveDistance: Int, up: Bool) {
        let moveDuration = 0.3
        let movement: CGFloat = CGFloat(up ? moveDistance : -moveDistance)

        UIView.beginAnimations("animateTextField", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(moveDuration)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
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


