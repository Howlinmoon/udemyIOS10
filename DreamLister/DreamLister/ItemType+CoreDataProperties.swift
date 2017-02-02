//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by jim Veneskey on 2/2/17.
//  Copyright © 2017 Strifecrafter. All rights reserved.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
