//
//  ViewController.swift
//  PartyRock
//
//  Created by jim Veneskey on 12/28/16.
//  Copyright © 2016 Strifecrafter. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let p1 = PartyRock(imageURL: "http://mycutekitten.com/wp-content/uploads/2012/01/kitten-gray-cat-adorable-cute.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/G1dZRNxvsGo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Video 1")
        
        partyRocks.append(p1)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }


}

