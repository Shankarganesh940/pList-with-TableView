//
//  ViewController.swift
//  PlistSample
//
//  Created by Greeens5 on 25/05/19.
//  Copyright © 2019 Book. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        if let path = Bundle.main.path(forResource: "Player", ofType: "plist")
        {
            if let array = NSDictionary(contentsOfFile: path) as? [String : Any]
            {
                print(array)
            }
    super.viewDidLoad()
    }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

