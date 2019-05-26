//
//  ViewController.swift
//  PlistSample
//
//  Created by Greeens5 on 25/05/19.
//  Copyright © 2019 Book. All rights reserved.
//

import UIKit
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newid.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = newid[indexPath.row]
        return cell
    }
    var newid : [String] = []
    override func viewDidLoad() {
        let path  =  Bundle.main.path(forResource: "Player", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!) as! [String: Any]
        if let arr = (dict["Contacts"] as? [Any]) {
            for  ar in arr {
                let d1 = ar as! [String: Any]
                newid.append(d1["name"] as! String)
                print(d1["id"] ?? "Can't Find")
                print(d1["name"] ?? "Can't Find")
                let d2 = d1["phone"] as? [String: Any]
                print(d2?["mobile"] ?? "Can't Find")
                print("newid-->",newid)
                        }
            }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
