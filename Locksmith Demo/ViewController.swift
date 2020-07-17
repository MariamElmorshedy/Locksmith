//
//  ViewController.swift
//  Locksmith Demo
//
//  Created by Mariam on 7/16/20.
//  Copyright © 2020 Mariam. All rights reserved.
//

import UIKit
import Locksmith

class ViewController: UIViewController {

    let info = ["password": "1234"]
    @IBOutlet weak var Input: UITextField!
    @IBOutlet weak var Output: UILabel!
    @IBAction func Action(_ sender: UIButton) {
        
        Output.text = Input.text
        UserDefaults.standard.set(Input.text, forKey: "myName")
        Input.text = ""
        
  }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //saving data into keychain
//        do{
//            try
//               Locksmith.saveData( data: ["password":"123456"], forUserAccount: "Locksmith_Demo")
//       }
//        catch{
//           //could not save the data into keychain
//        }
//
        
        //retrieve data
        //let information = Locksmith.loadDataForUserAccount(userAccount: "Locksmith_Demo")
    }

    override func viewDidAppear(_ animated: Bool) {
       if let x = UserDefaults.standard.object(forKey: "myName") as? String
       {
         Output.text = x
       }
    }
}

    
    

