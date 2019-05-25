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
        let path  =  Bundle.main.path(forResource: "Player", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!) as! [String: Any]
        if let arr = (dict["Contacts"] as? NSArray) {
            let arr1 = arr
            for  ar in arr1 {
                let d1 = ar as! [String: Any]
                print(d1["id"] ?? "Can't Find")
                print(d1["name"] ?? "Can't Find")
                let d2 = d1["phone"] as? [String: Any]
                print(d2?["mobile"] ?? "Can't Find")
    }
    }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
