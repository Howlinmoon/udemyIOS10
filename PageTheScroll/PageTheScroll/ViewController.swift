//
//  ViewController.swift
//  PageTheScroll
//
//  Created by jim Veneskey on 12/8/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var images = [UIImageView]()
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            images.append(UIImageView(image: image))
        }
        
     
        print("Count: \(images.count)")
        
        
    }
}

