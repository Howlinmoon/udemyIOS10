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
        
        let p2 = PartyRock(imageURL: "http://i1-news.softpedia-static.com/images/news2/Diablo-3-s-Secret-Cow-Level-Is-Called-Whimsyshire-Has-Cartoon-Graphics-2.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WKB_0WNNnJM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Cow Level")
        
        let p3 = PartyRock(imageURL: "http://sitstaysquirrel.com/wp-content/uploads/2016/05/Dwarf-Female-Outlaw-Rogue-Transmog-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/h7KgLLYrvdE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Outlaw Rogue")
        
//        let p5 = PartyRock(imageURL: <#T##String#>, videoURL: <#T##String#>, videoTitle: <#T##String#>)
        
//        let p4 = PartyRock(imageURL: <#T##String#>, videoURL: <#T##String#>, videoTitle: <#T##String#>)

        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
//        partyRocks.append(p4)
//        partyRocks.append(p5)
        
        
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

