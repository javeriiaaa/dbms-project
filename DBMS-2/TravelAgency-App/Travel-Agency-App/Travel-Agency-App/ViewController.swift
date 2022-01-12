//
//  ViewController.swift
//  Travel-Agency-App
//
//  Created by Javeria on 8/26/20.
//  Copyright © 2020 Javeria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let data = dataLoader().AgencyData
//        print(data)
        
//        let data = dataLoaderb().BookingData
//        print(data)
    }
    override func viewDidAppear(_ animated: Bool) {
        performSegue(withIdentifier: "loginView", sender: self)
    }
   
}

