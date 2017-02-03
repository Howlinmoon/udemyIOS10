//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by jim Veneskey on 2/2/17.
//  Copyright © 2017 Strifecrafter. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {
    
    // When this gets inserted - assign the current date to the 'created' property
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        
        self.created = NSDate()
        
    }

}
