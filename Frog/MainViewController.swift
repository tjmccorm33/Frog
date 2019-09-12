//
//  ViewController.swift
//  project1
//
//  Created by Tyler j McCormick on 9/11/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                //this is a picture to load!
                pictures.append(item)
            }
        }
        
        print(pictures)
    }

}
