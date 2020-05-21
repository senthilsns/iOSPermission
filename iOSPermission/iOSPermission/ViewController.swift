//
//  ViewController.swift
//  iOSPermission
//
//  Created by Senthil on 21/05/20.
//  Copyright © 2020 Senthil. All rights reserved.
//

import UIKit
import SPPermission

class ViewController: UIViewController,SPPermissionDialogDelegate,SPPermissionDialogDataSource {

    @IBAction func Click_TouchUpInside(_ sender: Any) {
        
        // Set permission
     SPPermission.Dialog.request(with: [.camera,.locationWhenInUse,.microphone], on: self)
       
      
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Check Conditopn
        let Location : Bool = SPPermission.isAllowed(.locationWhenInUse)
              if Location == true {
                  print("Location is enabled")
              }else {
                  print("Location is Disabled")
              }
    }


}

