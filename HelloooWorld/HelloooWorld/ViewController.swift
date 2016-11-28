//
//  ViewController.swift
//  HelloooWorld
//
//  Created by jim Veneskey on 11/16/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var titleImage: UIImageView!
 
    @IBOutlet weak var welcomeBtn: UIButton!
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func welcomePressed(_ sender: AnyObject) {
    
        titleImage.isHidden = false
        background.isHidden = false
        welcomeBtn.isHidden = true
    }

}

