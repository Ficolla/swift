//
//  ViewController.swift
//  Project01
//
//  Created by Nicola Fabiani on 22/04/2020.
//  Copyright © 2020 Nicola Fabiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        
        print(pictures)
    }


}

