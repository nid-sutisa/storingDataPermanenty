//
//  ViewController.swift
//  data Storing Permanently
//
//  Created by Student10 on 6/15/2560 BE.
//  Copyright © 2560 Student10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //implicit
    var strPhone = ""
    
    
    
    @IBOutlet weak var showPhoneLabel: UILabel!
    
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        //get value form Textfield
        strPhone = phoneTextField.text!
        print("strPhone ==> \(strPhone)")
        
        // save to permanently
        UserDefaults.standard.set(strPhone, forKey: "Phone")
        
        
    } //savebutton
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let strPermanentPhone = UserDefaults.standard.object(forKey: "Phone")
        if let myPermanent = strPermanentPhone as? String {
            print("result from Permanent ==> \(myPermanent)")
            showPhoneLabel.text = myPermanent
            
        }
        
        
        
 //       print("strPermanentPhone ==>  \(strPermanentPhone!)")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

