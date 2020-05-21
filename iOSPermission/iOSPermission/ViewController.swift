//
//  ViewController.swift
//  iOSPermission
//
//  Created by Senthil on 21/05/20.
//  Copyright © 2020 Senthil. All rights reserved.
//

import UIKit
import SPPermission

class ViewController: UIViewController {

    @IBAction func Click_TouchUpInside(_ sender: Any) {
        SPPermission.Dialog.request(with: [.camera,.locationWhenInUse,.microphone], on: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

