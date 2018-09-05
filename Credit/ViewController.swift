//
//  ViewController.swift
//  Credit
//
//  Created by IOS Developer on 8/31/18.
//  Copyright © 2018 iCard.space. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var telephone: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var register: UIButton!
    @IBOutlet weak var forgot: UIButton!

    @IBAction func loginButton(_ sender: Any) {
        print(telephone.text!)
        print(pass.text!)
        
    }
    
    let underline : [NSAttributedStringKey: Any] = [
        NSAttributedStringKey.foregroundColor : UIColor.black,
            NSAttributedStringKey.underlineStyle : NSUnderlineStyle.styleSingle.rawValue]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        telephone.layer.masksToBounds = false
        telephone.layer.shadowRadius = 0.7
        telephone.layer.shadowOffset = CGSize(width: 0, height: 1)
        telephone.layer.shadowOpacity = 0.8
        telephone.layer.shadowColor = UIColor.black.cgColor
        
        pass.layer.masksToBounds = false
        pass.layer.shadowRadius = 0.7
        pass.layer.shadowOffset = CGSize(width: 0, height: 1)
        pass.layer.shadowOpacity = 0.7
        pass.layer.shadowColor = UIColor.black.cgColor
        
//        pass.rightViewMode = UITextFieldViewMode.always //ใส่ icon ในช่องกรอก
//        let imageviewtext = UIImageView()
//        imageviewtext.frame = CGRect(x: -20, y: 20, width: 20, height: 20)
//        let imagetext = UIImage(named: "key_password.png");
//        imageviewtext.image = imagetext
//        pass.addSubview(imageviewtext)
//        pass.rightView = imageviewtext
        
        
        let attributeString = NSMutableAttributedString(string: "สมัครสมาชิก",attributes: underline)
        let attributeString1 = NSMutableAttributedString(string: "ลืมรหัสผ่าน?",attributes: underline)

        register.setAttributedTitle(attributeString, for: .normal)
        forgot.setAttributedTitle(attributeString1, for: .normal)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
//    func dismissKeyboard() {
//        //Causes the view (or one of its embedded text fields) to resign the first responder status.
//        view.endEditing(true)
//    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

class TextField: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
}



